package org.elixir_europe.excelerate.benchmarking;

public class BenchmarkingDocNoSchemaIdException
	extends Exception
{
	protected String jsonSource;
	public BenchmarkingDocNoSchemaIdException(String jsonSource) {
		this.jsonSource = jsonSource;
	}
	
	@Override
	public String getMessage() {
		return String.format("Skipping schema validation (no one declared for %s)",jsonSource);
	}
}
