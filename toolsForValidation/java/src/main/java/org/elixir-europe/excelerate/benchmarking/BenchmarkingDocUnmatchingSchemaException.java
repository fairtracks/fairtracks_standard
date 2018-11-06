package org.elixir_europe.excelerate.benchmarking;

import java.net.URI;

public class BenchmarkingDocUnmatchingSchemaException
	extends Exception
{
	protected String jsonSource;
	protected URI jsonSchemaId;
	public BenchmarkingDocUnmatchingSchemaException(String jsonSource,URI jsonSchemaId) {
		this.jsonSource = jsonSource;
		this.jsonSchemaId = jsonSchemaId;
	}
	
	@Override
	public String getMessage() {
		return String.format("Skipping schema validation (document %s does not match schema with URI %s)",jsonSource,jsonSchemaId.toString());
	}
}
