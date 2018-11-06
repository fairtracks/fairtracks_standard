package org.elixir_europe.excelerate.benchmarking;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.IOException;
import java.io.Reader;

import java.net.URI;
import java.net.URISyntaxException;

import java.util.ArrayList;
import java.util.Collection;
import java.util.regex.Pattern;
import java.util.regex.Matcher;
import java.util.stream.Collectors;

import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;

public class BenchmarkingDoc {
	protected final static String SCHEMA_KEY = "_schema";
	
	protected static final Pattern jStepPat = Pattern.compile("^([^\\[]+)\\[(0|[1-9][0-9]+)?\\]$");
	
	protected JSONObject jsonDoc;
	protected String jsonSource;
	protected URI jsonSchemaId;
	
	public BenchmarkingDoc(JSONObject jsonDoc) {
		this(jsonDoc,"<unknown>");
	}
	
	public BenchmarkingDoc(JSONObject jsonDoc,String jsonSource) {
		this.jsonDoc = jsonDoc;
		this.jsonSource = jsonSource;
		
		jsonSchemaId = null;
		if(jsonDoc.has(SCHEMA_KEY)) {
			try{
				jsonSchemaId = new URI(jsonDoc.getString(SCHEMA_KEY));
			} catch(URISyntaxException use) {
				// IgnoreIt(R)
			}
		}
	}
	
	public static BenchmarkingDoc parseFile(File jsonFile)
		throws IOException
	{
		try(
			InputStream jsonStream = new BufferedInputStream(new FileInputStream(jsonFile),1024*1024);
			Reader jsonReader = new InputStreamReader(jsonStream,"UTF-8");
		) {
			JSONTokener jt = new JSONTokener(jsonReader);
			JSONObject jsonDoc = new JSONObject(jt);
			String jsonSource = jsonFile.getAbsolutePath();
			return new BenchmarkingDoc(jsonDoc,jsonSource);
		}
	}
	
	public URI getJsonSchemaId() {
		return jsonSchemaId;
	}
	
	public String getJsonSource() {
		return jsonSource;
	}
	
	public JSONObject getJsonDoc() {
		return jsonDoc;
	}
	
	protected Collection<String> materializeJPath(String jPath) {
		Collection<Object> objectives = new ArrayList<Object>();
		objectives.add(jsonDoc);
		
		String[] jSteps = (jPath.length() ==0 || jPath.equals('.')) ? new String[] { null } : jPath.split("\\.");
		for(String jStep: jSteps) {
			// Fail fast
			if(objectives.isEmpty())  break;
			
			Collection<Object> newObjectives = new ArrayList<Object>();
			boolean isArray = false;
			Integer arrayIndex = null;
			if(jStep!=null) {
				Matcher jStepMatch = jStepPat.matcher(jStep);
				if(jStepMatch.find()) {
					isArray = true;
					String strIndex = jStepMatch.group(2);
					if(strIndex!=null) {
						arrayIndex = Integer.valueOf(strIndex);
					}
					jStep = jStepMatch.group(1);
				}
			}
			for(Object objective: objectives) {
				boolean isAvailable = false;
				Object value = null;
				if(jStep!=null) {
					if(objective instanceof JSONObject) {
						JSONObject obj = (JSONObject)objective;
						if(obj.has(jStep)) {
							value = obj.get(jStep);
							isAvailable = true;
						}
					//} else {
					//	// Failing
					//	return null;
					}
				} else {
					value = objective;
					isAvailable = true;
				}
				
				if(isAvailable) {
					if(value instanceof JSONArray) {
						JSONArray aValue = (JSONArray)value;
						if(arrayIndex!=null) {
							if(arrayIndex >= 0 && arrayIndex < aValue.length()) {
								newObjectives.add(aValue.opt(arrayIndex));
							//} else {
							//	return null;
							}
						} else {
							aValue.iterator().forEachRemaining(newObjectives::add);
						}
					} else {
						newObjectives.add(value);
					}
				//} else {
				//	// Failing
				//	return null;
				}
			}
			
			objectives = newObjectives;
		}
		
		// Flattening it (we return a reference to a list of atomic values)
		Collection<String> strObjectives = objectives.stream().map(objective -> objective.toString()).collect(Collectors.toCollection(ArrayList::new));
		
		return strObjectives;
	}
	
	// It fetches the values from a JSON, based on the given paths to the members of the key
	public Collection<Collection<String>> getKeyValues(Collection<String> p_members) {
		return p_members.stream().map(member -> materializeJPath(member)).collect(Collectors.toCollection(ArrayList::new));
	}
}
