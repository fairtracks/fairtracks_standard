package org.elixir_europe.excelerate.benchmarking;

public class SchemaRepeatedIdException
	extends Exception
{
	protected String jsonSchemaSource;
	protected String repeatedJsonSchemaSource;
	public SchemaRepeatedIdException(String jsonSchemaSource,String repeatedJsonSchemaSource) {
		this.jsonSchemaSource = jsonSchemaSource;
		this.repeatedJsonSchemaSource = repeatedJsonSchemaSource;
	}
	
	@Override
	public String getMessage() {
		return String.format("validated, but schema in %s and schema in %s have the same id",jsonSchemaSource,repeatedJsonSchemaSource);
	}
}
