package org.elixir_europe.excelerate.benchmarking;

import java.net.URI;

public class OrphanBenchmarkingDocException
	extends Exception
{
	protected URI jsonSchemaId;
	public OrphanBenchmarkingDocException(URI jsonSchemaId) {
		this.jsonSchemaId = jsonSchemaId;
	}
	
	@Override
	public String getMessage() {
		return String.format("Skipping schema validation (schema with URI %s not found)",jsonSchemaId.toString());
	}
}
