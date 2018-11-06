package org.elixir_europe.excelerate.benchmarking;

import java.net.URI;

import java.util.Collection;
import java.util.stream.Collectors;

public class SchemaMissingForeignKeyException
	extends SchemaMissingForeignKeyNoDocumentsException
{
	protected String unmatchedFK;
	public SchemaMissingForeignKeyException(String unmatchedFK, String jsonSource, URI foreignJsonSchemaId) {
		super(jsonSource,foreignJsonSchemaId);
		this.unmatchedFK = unmatchedFK;
	}
	
	public SchemaMissingForeignKeyException(Collection<SchemaMissingForeignKeySchemaException> errors) {
		super(errors);
	}
	
	@Override
	public String getMessage() {
		return errors==null ? String.format("Unmatching FK (%s) in %s to schema %s",unmatchedFK,jsonSource,foreignJsonSchemaId) : errors.stream().map(e -> e.getMessage()).collect(Collectors.joining("\n"));
	}
}
