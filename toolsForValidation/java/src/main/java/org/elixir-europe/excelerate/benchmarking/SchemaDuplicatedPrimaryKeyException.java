package org.elixir_europe.excelerate.benchmarking;

import java.util.Collection;
import java.util.stream.Collectors;

public class SchemaDuplicatedPrimaryKeyException
	extends Exception
{
	protected Collection<SchemaDuplicatedPrimaryKeyException> errors;
	protected String jsonSource1;
	protected String jsonSource2;
	public SchemaDuplicatedPrimaryKeyException(String jsonSource1, String jsonSource2) {
		this.jsonSource1 = jsonSource1;
		this.jsonSource2 = jsonSource2;
		this.errors = null;
	}
	
	public SchemaDuplicatedPrimaryKeyException(Collection<SchemaDuplicatedPrimaryKeyException> errors) {
		this.errors = errors;
		this.jsonSource1 = null;
		this.jsonSource2 = null;
	}
	
	@Override
	public String getMessage() {
		return errors==null ? String.format("Duplicate PK in %s and %s",jsonSource1,jsonSource2) : errors.stream().map(e -> e.getMessage()).collect(Collectors.joining("\n"));
	}
	
	public Collection<SchemaDuplicatedPrimaryKeyException> getInconsistencies() {
		return errors;
	}
}
