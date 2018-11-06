package org.elixir_europe.excelerate.benchmarking;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.IOException;
import java.io.Reader;

import java.net.URI;

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

/**
 * Hello world!
 *
 */
public class Validator
{
	protected Map<URI,ValidatedJSONSchema> schemaHash;
	
	public Validator() {
		schemaHash = new HashMap<URI,ValidatedJSONSchema>();
	}
	
	public ValidatedJSONSchema addSchema(File jsonSchemaFile)
		throws IOException, ValidationException, SchemaNoIdException, SchemaRepeatedIdException
	{
		try(
			InputStream jsonStream = new BufferedInputStream(new FileInputStream(jsonSchemaFile),1024*1024);
			Reader jsonReader = new InputStreamReader(jsonStream,"UTF-8");
		) {
			JSONTokener jt = new JSONTokener(jsonReader);
			JSONObject jsonSchema = new JSONObject(jt);
			String jsonSchemaSource = jsonSchemaFile.getPath();
			return addSchema(jsonSchema,jsonSchemaSource);
		}
	}
	
	public ValidatedJSONSchema addSchema(JSONObject jsonSchema,String jsonSchemaSource)
		throws ValidationException, SchemaNoIdException, SchemaRepeatedIdException
	{
		ValidatedJSONSchema bSchemaDoc = new ValidatedJSONSchema(jsonSchema,this,jsonSchemaSource);
		
		// If we are here, then there is no error
		schemaHash.put(bSchemaDoc.getId(),bSchemaDoc);
		
		return bSchemaDoc;
	}
	
	public boolean containsSchema(URI jsonSchemaId) {
		return schemaHash.containsKey(jsonSchemaId);
	}
	
	public boolean isEmpty() {
		return schemaHash.isEmpty();
	}
	
	public ValidatedJSONSchema getSchema(URI jsonSchemaId) {
		return schemaHash.get(jsonSchemaId);
	}
	
	public Collection<ValidatedJSONSchema> getSchemas() {
		return schemaHash.values();
	}
	
	public void consistencyChecks(ValidatedJSONSchema p_schema)
		throws SchemaInconsistentException
	{
		// Now, we check whether the declared foreign keys are pointing to loaded JSON schemas
		Collection<String> errors = new ArrayList<String>();
		for(ValidatedJSONSchema.ForeignKey p_FK_decl: p_schema.getForeignKeys()) {
			URI fkPkSchemaId = p_FK_decl.getSchemaURI();
			if(!containsSchema(fkPkSchemaId)) {
				// store the error for later notification
				errors.add(String.format("No schema with %s id, required by %s (%s)",fkPkSchemaId.toString(),p_schema.getJsonSchemaSource(),p_schema.getId().toString()));
			}
		}
		
		if(!errors.isEmpty()) {
			// throw exception with the gathered errorsValidationException, BenchmarkingDocNoSchemaIdException
			throw new SchemaInconsistentException(errors);
		}
	}
	
	public void validatePass1(BenchmarkingDoc bDoc)
		throws ValidationException, BenchmarkingDocNoSchemaIdException, OrphanBenchmarkingDocException, BenchmarkingDocUnmatchingSchemaException, SchemaDuplicatedPrimaryKeyException
	{
		URI jsonSchemaId = bDoc.getJsonSchemaId();
		
		if(jsonSchemaId == null) {
			throw new BenchmarkingDocNoSchemaIdException(bDoc.getJsonSource());
		}
		
		if(!containsSchema(jsonSchemaId)) {
			throw new OrphanBenchmarkingDocException(jsonSchemaId);
		}
		
		ValidatedJSONSchema bSchemaDoc = getSchema(jsonSchemaId);
		bSchemaDoc.validatePass1(bDoc);
	}
	
	public void validatePass2(BenchmarkingDoc bDoc)
		throws BenchmarkingDocNoSchemaIdException, OrphanBenchmarkingDocException, SchemaMissingForeignKeySchemaException
	{
		URI jsonSchemaId = bDoc.getJsonSchemaId();
		
		if(jsonSchemaId == null) {
			throw new BenchmarkingDocNoSchemaIdException(bDoc.getJsonSource());
		}
		
		if(!containsSchema(jsonSchemaId)) {
			throw new OrphanBenchmarkingDocException(jsonSchemaId);
		}
		
		ValidatedJSONSchema bSchemaDoc = getSchema(jsonSchemaId);
		
		Collection<SchemaMissingForeignKeySchemaException> errors = new ArrayList<SchemaMissingForeignKeySchemaException>();
		for(ValidatedJSONSchema.ForeignKey p_FK_decl: bSchemaDoc.getForeignKeys()) {
			Collection<Collection<String>> fkValues = bDoc.getKeyValues(p_FK_decl.getComponents());
			
			Collection<String> fkStrings = ValidatedJSONSchema.GenKeyStrings(fkValues);
			
			if(!fkStrings.isEmpty()) {
				URI fkPkSchemaId = p_FK_decl.getSchemaURI();
				
				if(containsSchema(fkPkSchemaId)) {
					ValidatedJSONSchema p_PK_schema = getSchema(fkPkSchemaId);
					
					if(p_PK_schema.hasPKs()) {
						for(String fkString: fkStrings) {
							if(fkString!=null) {
								if(!p_PK_schema.containsPK(fkString)) {
									// Store error due FK violation
									errors.add(new SchemaMissingForeignKeyException(fkString,bDoc.getJsonSource(),fkPkSchemaId));
								}
							}
						}
					} else {
						// Store error due schema with no documents
						errors.add(new SchemaMissingForeignKeyNoDocumentsException(bDoc.getJsonSource(),fkPkSchemaId));
					}
				} else {
					// Store error due missing schema
					errors.add(new SchemaMissingForeignKeySchemaException(bDoc.getJsonSource(),fkPkSchemaId));
				}
			}
		}
		
		if(!errors.isEmpty()) {
			// Throw an exception with all the gathered errors
			throw new SchemaMissingForeignKeySchemaException(errors);
		}
	}
}
