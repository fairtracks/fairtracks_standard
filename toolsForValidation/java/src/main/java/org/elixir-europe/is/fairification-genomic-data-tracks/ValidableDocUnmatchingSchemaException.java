package org.elixir_europe.is.fairification_genomic_data_tracks;

import java.net.URI;

public class ValidableDocUnmatchingSchemaException
	extends Exception
{
	protected String jsonSource;
	protected URI jsonSchemaId;
	public ValidableDocUnmatchingSchemaException(String jsonSource,URI jsonSchemaId) {
		this.jsonSource = jsonSource;
		this.jsonSchemaId = jsonSchemaId;
	}
	
	@Override
	public String getMessage() {
		return String.format("Skipping schema validation (document %s does not match schema with URI %s)",jsonSource,jsonSchemaId.toString());
	}
}
