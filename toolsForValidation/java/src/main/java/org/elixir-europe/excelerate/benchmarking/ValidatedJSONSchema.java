package org.elixir_europe.excelerate.benchmarking;

import java.net.URI;
import java.net.URISyntaxException;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.stream.Collectors;

import org.everit.json.schema.Schema;
import org.everit.json.schema.ValidationException;
import org.everit.json.schema.loader.SchemaLoader;

import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;

public class ValidatedJSONSchema {
	protected final static String FOREIGN_KEYS_KEY = "foreign_keys";
	protected final static String ID_KEY = "id";
	protected final static String ITEMS_KEY = "items";
	protected final static String MEMBERS_KEY = "members";
	protected final static String PRIMARY_KEY_KEY = "primary_key";
	protected final static String PROPERTIES_KEY = "properties";
	protected final static String SCHEMA_ID_KEY = "schema_id";
	
	protected JSONObject jsonSchema;
	protected String jsonSchemaSource;
	protected URI jsonSchemaURI;
	protected Schema jsonSchemaVal;
	
	protected Collection<String> p_PK_def;
	
	protected Map<String,String> p_PK;
	
	protected Collection<ForeignKey> p_FKs;
	
	protected Collection<String> warnings;
	
	protected static final Schema Draft4Schema = SchemaLoader.load(
		new JSONObject(
			new JSONTokener(
				Schema.class.getResourceAsStream("/org/json-schema/draft-04/schema")
			)
		)
	);
	
	private static Collection<String> _NewPKhelper(String elem) {
		Collection<String> newPK = new ArrayList<String>();
		newPK.add(elem);
		
		return newPK;
	}
	
	private static Collection<String> _AggPKhelper(Collection<String> basePK,String curPKvalue) {
		Collection<String> newPK = new ArrayList<String>(basePK);
		newPK.add(curPKvalue);
		
		return newPK;
	}
	
	// It generates pk strings from a set of values
	public static Collection<String> GenKeyStrings(Collection<Collection<String>> keyTuple) {
		int numPKcols = keyTuple.size();
		if(numPKcols==0) {
			return new ArrayList<String>();
		}
		
		// Exiting in case some of the inputs is undefined
		for(Collection<String> curPKvalues: keyTuple) {
			// If there is no found value, generate nothing
			if(curPKvalues.size()==0) {
				return new ArrayList<String>();
			}
		}
		
		Collection<Collection<String>> pkStrings = null;
		for(Collection<String> curPKvalues: keyTuple) {
			if(pkStrings == null) {
				pkStrings = curPKvalues.stream().map(elem -> _NewPKhelper(elem)).collect(Collectors.toCollection(ArrayList::new));
			} else {
				Collection<Collection<String>> newPKstrings = new ArrayList<Collection<String>>();
				
				for(String curPKvalue: curPKvalues) {
					pkStrings.stream().map(basePK -> _AggPKhelper(basePK,curPKvalue)).forEach(newPKstrings::add);
				}
				
				pkStrings = newPKstrings;
			}
		}
		
		return pkStrings.stream().map(pkString -> new JSONArray(pkString).toString()).collect(Collectors.toCollection(ArrayList::new));
	}
	
	protected class ForeignKey {
		protected final URI refSchemaId;
		protected final Collection<String> components;
		
		public ForeignKey(URI abs_ref_schema_id,Collection<String> components) {
			refSchemaId = abs_ref_schema_id;
			this.components = components;
		}
		
		public final URI getSchemaURI() {
			return refSchemaId;
		}
		
		public final Collection<String> getComponents() {
			return components;
		}
	}
	
	protected Collection<ForeignKey> findFKs() {
		return findFKs(jsonSchema);
	}
	
	protected Collection<ForeignKey> findFKs(JSONObject schema) {
		return findFKs(schema,"");
	}
	
	protected Collection<ForeignKey> findFKs(JSONObject jsonSchema,String prefix) {
		Collection<ForeignKey> FKs = new ArrayList<ForeignKey>();
		
		// First, this level's foreign keys
		boolean isArray = false;
		
		if(jsonSchema.has(ITEMS_KEY) && jsonSchema.get(ITEMS_KEY) instanceof JSONObject) {
			jsonSchema = (JSONObject) jsonSchema.get(ITEMS_KEY);
			isArray = true;
			
			if(prefix.length() > 0) {
				prefix = prefix + "[]";
			}
		}
		
		if(jsonSchema.has(FOREIGN_KEYS_KEY) && jsonSchema.get(FOREIGN_KEYS_KEY) instanceof JSONArray) {
			for(Object fk_def_obj: (JSONArray)jsonSchema.get(FOREIGN_KEYS_KEY)) {
				// Only valid declarations are taken into account
				if(fk_def_obj instanceof JSONObject) {
					JSONObject fk_def = (JSONObject) fk_def_obj;
					if(fk_def.has(SCHEMA_ID_KEY) && fk_def.has(MEMBERS_KEY)) {
						String ref_schema_id = fk_def.getString(SCHEMA_ID_KEY);
						Object members = fk_def.get(MEMBERS_KEY);
						
						if(members instanceof JSONArray) {
							// Translating to absolute URI (in case it is relative)
							URI abs_ref_schema_id = jsonSchemaURI.resolve(ref_schema_id);
							
							Collection<String> components = new ArrayList<String>();
							for(Object component: (JSONArray)members) {
								String compStr = component.toString();
								components.add((compStr.length() > 0 && !compStr.equals("."))?prefix+"."+compStr:prefix);
							}
							
							FKs.add(new ForeignKey(abs_ref_schema_id,components));
						}
					}
				}
			}
		}
		
		// Then, the foreign keys inside sublevels
		if(jsonSchema.has(PROPERTIES_KEY) && jsonSchema.get(PROPERTIES_KEY) instanceof JSONObject) {
			if(prefix.length()>0) {
				prefix = prefix + ".";
			}
			
			JSONObject p = (JSONObject)jsonSchema.get(PROPERTIES_KEY);
			for(String k: p.keySet()) {
				Object subschema = p.get(k);
				if(subschema instanceof JSONObject) {
					FKs.addAll(findFKs((JSONObject)subschema,prefix+k));
				}
			}
		}
		
		return FKs;
	}
	
	public ValidatedJSONSchema(JSONObject jsonSchema)
		throws ValidationException, SchemaNoIdException, SchemaRepeatedIdException
	{
		this(jsonSchema,null,"<unknown>");
	}
	
	public ValidatedJSONSchema(JSONObject jsonSchema,String jsonSchemaSource)
		throws ValidationException, SchemaNoIdException, SchemaRepeatedIdException
	{
		this(jsonSchema,null,jsonSchemaSource);
	}
	
	public ValidatedJSONSchema(JSONObject jsonSchema,Validator p_schemaHash)
		throws ValidationException, SchemaNoIdException, SchemaRepeatedIdException
	{
		this(jsonSchema,p_schemaHash,"<unknown>");
	}
	
	public ValidatedJSONSchema(JSONObject jsonSchema,Validator p_schemaHash,String jsonSchemaSource)
		throws ValidationException, SchemaNoIdException, SchemaRepeatedIdException
	{
		this.jsonSchema = jsonSchema;
		this.jsonSchemaSource = jsonSchemaSource;
		this.warnings = new ArrayList<String>();
		
		Draft4Schema.validate(jsonSchema);
		
		// # Getting the JSON Pointer object instance of the augmented schema
		// # my $jsonSchemaP = $v->schema($jsonSchema)->schema;
		// # This step is done, so we fetch a complete schema
		// # $jsonSchema = $jsonSchemaP->data;
		if(jsonSchema.has(ID_KEY)) {
			try{
				jsonSchemaURI = new URI(jsonSchema.getString(ID_KEY));
				if(p_schemaHash!=null && p_schemaHash.containsSchema(jsonSchemaURI)) {
					// Throw exception due repeated schema
					throw new SchemaRepeatedIdException(jsonSchemaSource,p_schemaHash.getSchema(jsonSchemaURI).getJsonSchemaSource());
				}
				
				p_PK_def = null;
				p_PK = null;
				if(jsonSchema.has(PRIMARY_KEY_KEY)) {
					Object p_PK_obj = jsonSchema.get(PRIMARY_KEY_KEY);
					if(p_PK_obj instanceof JSONArray) {
						Collection<String> p_PK_list = new ArrayList<String>();
						for(Object key: (JSONArray)p_PK_obj) {
							if(key instanceof String) {
								p_PK_list.add((String)key);
							} else {
								// register this warning
								warnings.add(String.format("primary key in %s is not composed by strings defining its attributes. Ignoring it",jsonSchemaSource));
								p_PK_list = null;
								break;
							}
						}
						
						if(p_PK_list != null) {
							p_PK_def = p_PK_list;
							p_PK = new HashMap<String,String>();
						}
					}
				}
				
				p_FKs = findFKs();
			} catch(URISyntaxException use) {
				// IgnoreIt(R)
			}
		} else {
			// Throw an ignore exception
			throw new SchemaNoIdException(jsonSchemaSource);
		}
		
		// This is needed, due a bug in SchemaLoader
		if(jsonSchema.has("dependencies") && jsonSchema.get("dependencies") instanceof JSONObject) {
			 JSONObject dependencies = (JSONObject)jsonSchema.get("dependencies");
			 if(dependencies.length() == 0) {
				 jsonSchema.remove("dependencies");
			 }
		}
		// And at last
		jsonSchemaVal = SchemaLoader.load(jsonSchema);
	}
	
	public Collection<String> getWarnings() {
		return warnings;
	}
	
	public String getJsonSchemaSource() {
		return jsonSchemaSource;
	}
	
	public URI getId() {
		return jsonSchemaURI;
	}
	
	public Collection<ForeignKey> getForeignKeys() {
		return p_FKs;
	}
	
	public boolean hasPKs() {
		return p_PK!=null && p_PK.size() > 0;
	}
	
	public boolean containsPK(String key) {
		return p_PK!=null && p_PK.containsKey(key);
	}
	
	public boolean containsPK(Collection<String> keys) {
		return p_PK!=null && keys.stream().allMatch(key -> p_PK.containsKey(key));
	}
	
	public void validatePass1(BenchmarkingDoc bDoc)
		throws ValidationException, BenchmarkingDocNoSchemaIdException, BenchmarkingDocUnmatchingSchemaException, SchemaDuplicatedPrimaryKeyException
	{
		URI jsonSchemaId = bDoc.getJsonSchemaId();
		if(jsonSchemaId==null) {
			// Throw an ignore exception, due no declared schema
			// This should be an assertion, as it should never happen
			throw new BenchmarkingDocNoSchemaIdException(bDoc.getJsonSource());
		}
		if(jsonSchemaURI.equals(jsonSchemaId)) {
			jsonSchemaVal.validate(bDoc.getJsonDoc());
			
			// Does the schema contain a PK declaration?
			if(p_PK_def!=null) {
				Collection<Collection<String>> pkValues = bDoc.getKeyValues(p_PK_def);
				Collection<String> pkStrings = GenKeyStrings(pkValues);
				// Pass 1.a: check duplicate keys
				Collection<SchemaDuplicatedPrimaryKeyException> errors = new ArrayList<SchemaDuplicatedPrimaryKeyException>();
				for(String pkString: pkStrings) {
					if(p_PK.containsKey(pkString)) {
						// Store the error
						errors.add(new SchemaDuplicatedPrimaryKeyException(p_PK.get(pkString),bDoc.getJsonSource()));
					}
				}
				
				// Pass 1.b: record keys
				if(errors.isEmpty()) {
					String jsonFile = bDoc.getJsonSource();
					pkStrings.forEach(pkString -> p_PK.put(pkString,jsonFile));
				} else {
					// Throwing the exception with all the gathered errors
					throw new SchemaDuplicatedPrimaryKeyException(errors);
				}
			}
		} else {
			// Throw an ignore exception, due different schemas
			throw new BenchmarkingDocUnmatchingSchemaException(bDoc.getJsonSource(),jsonSchemaURI);
		}
	}
}
