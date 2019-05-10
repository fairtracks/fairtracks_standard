CONVERT_SCRIPT = scripts/python/opml_to_json.py
EXAMPLE_DIR = json/examples
SCHEMA_DIR = json/schema
OVERVIEW_DIR = json/overview

SCHEMA_FILES := $(wildcard $(SCHEMA_DIR)/*.schema.json)
EXAMPLE_FILES := $(wildcard $(EXAMPLE_DIR)/*.example.json)

.PHONY: json


# Rules

json: $(SCHEMA_FILES) $(EXAMPLE_FILES)

$(SCHEMA_DIR)/%.schema.json: $(OVERVIEW_DIR)/%.overview.opml $(CONVERT_SCRIPT)
	python $(CONVERT_SCRIPT) schema $(OVERVIEW_DIR)/$*.overview.opml $(SCHEMA_DIR)/$*.schema.json

$(EXAMPLE_DIR)/%.example.json: $(OVERVIEW_DIR)/%.overview.opml $(CONVERT_SCRIPT)
	python $(CONVERT_SCRIPT) example $(OVERVIEW_DIR)/$*.overview.opml $(EXAMPLE_DIR)/$*.example.json
