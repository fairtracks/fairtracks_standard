package org.elixir_europe.excelerate.benchmarking;

import java.net.URI;

import java.util.Collection;
import java.util.stream.Collectors;

public class SchemaMissingForeignKeyNoDocumentsException
	extends SchemaMissingForeignKeySchemaException
{
	public SchemaMissingForeignKeyNoDocumentsException(String jsonSource, URI foreignJsonSchemaId) {
		super(jsonSource,foreignJsonSchemaId);
	}
	
	public SchemaMissingForeignKeyNoDocumentsException(Collection<SchemaMissingForeignKeySchemaException> errors) {
		super(errors);
	}
	
	@Override
	public String getMessage() {
		return errors==null ? String.format("No available documents from %s schema, required by %s",foreignJsonSchemaId,jsonSource) : errors.stream().map(e -> e.getMessage()).collect(Collectors.joining("\n"));
	}
}
