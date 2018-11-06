package org.elixir_europe.excelerate.benchmarking;

import java.net.URI;

import java.util.Collection;
import java.util.stream.Collectors;

public class SchemaMissingForeignKeySchemaException
	extends Exception
{
	protected Collection<SchemaMissingForeignKeySchemaException> errors;
	protected String jsonSource;
	protected URI foreignJsonSchemaId;
	public SchemaMissingForeignKeySchemaException(String jsonSource, URI foreignJsonSchemaId) {
		this.jsonSource = jsonSource;
		this.foreignJsonSchemaId = foreignJsonSchemaId;
		this.errors = null;
	}
	
	public SchemaMissingForeignKeySchemaException(Collection<SchemaMissingForeignKeySchemaException> errors) {
		this.errors = errors;
		this.jsonSource = null;
		this.foreignJsonSchemaId = null;
	}
	
	@Override
	public String getMessage() {
		return errors==null ? String.format("No available schema %s , required by %s",foreignJsonSchemaId,jsonSource) : errors.stream().map(e -> e.getMessage()).collect(Collectors.joining("\n"));
	}
	
	public Collection<SchemaMissingForeignKeySchemaException> getInconsistencies() {
		return errors;
	}
}
