package org.elixir_europe.is.fairification_genomic_data_tracks;

import java.net.URI;

public class OrphanValidableDocException
	extends Exception
{
	protected URI jsonSchemaId;
	public OrphanValidableDocException(URI jsonSchemaId) {
		this.jsonSchemaId = jsonSchemaId;
	}
	
	@Override
	public String getMessage() {
		return String.format("Skipping schema validation (schema with URI %s not found)",jsonSchemaId.toString());
	}
}
