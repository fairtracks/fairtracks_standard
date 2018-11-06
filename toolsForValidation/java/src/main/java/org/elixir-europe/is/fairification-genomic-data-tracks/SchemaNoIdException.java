package org.elixir_europe.is.fairification_genomic_data_tracks;

public class SchemaNoIdException
	extends Exception
{
	protected String jsonSchemaSource;
	public SchemaNoIdException(String jsonSchemaSource) {
		this.jsonSchemaSource = jsonSchemaSource;
	}
	
	@Override
	public String getMessage() {
		return String.format("validated, but schema in %s has no id attribute",jsonSchemaSource);
	}
}
