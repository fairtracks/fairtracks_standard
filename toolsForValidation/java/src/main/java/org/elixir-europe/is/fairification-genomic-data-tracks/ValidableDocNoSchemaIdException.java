package org.elixir_europe.is.fairification_genomic_data_tracks;

public class ValidableDocNoSchemaIdException
	extends Exception
{
	protected String jsonSource;
	public ValidableDocNoSchemaIdException(String jsonSource) {
		this.jsonSource = jsonSource;
	}
	
	@Override
	public String getMessage() {
		return String.format("Skipping schema validation (no one declared for %s)",jsonSource);
	}
}
