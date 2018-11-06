package org.elixir_europe.excelerate.benchmarking;

import java.util.Collection;

public class SchemaInconsistentException
	extends Exception
{
	protected Collection<String> errors;
	public SchemaInconsistentException(Collection<String> errors) {
		this.errors = errors;
	}
	
	@Override
	public String getMessage() {
		return String.join("\n",errors);
	}
	
	public Collection<String> getInconsistencies() {
		return errors;
	}
}
