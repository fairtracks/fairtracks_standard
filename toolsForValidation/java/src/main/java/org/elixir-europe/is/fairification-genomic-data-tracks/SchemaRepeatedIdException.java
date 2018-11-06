package org.elixir_europe.is.fairification_genomic_data_tracks;

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
