CONVERT_SCRIPT = scripts/python/opml_to_json.py
OVERVIEW_DIR = json/overview
EXAMPLE_DIR = json/examples
SCHEMA_DIR = json/schema

OVERVIEW_FILES := $(wildcard $(OVERVIEW_DIR)/*.overview.opml)
EXAMPLE_FILES := $(wildcard $(EXAMPLE_DIR)/*.example.json)
SCHEMA_FILES := $(wildcard $(SCHEMA_DIR)/*.schema.json)

.PHONY: json


# Rules

json: $(SCHEMA_FILES) $(EXAMPLE_FILES)

$(SCHEMA_DIR)/fairtracks_%.schema.json: $(OVERVIEW_DIR)/fairtracks_%.overview.opml $(CONVERT_SCRIPT)
	python $(CONVERT_SCRIPT) schema $(OVERVIEW_DIR)/fairtracks_$*.overview.opml $(SCHEMA_DIR)/fairtracks_$*.schema.json

$(SCHEMA_DIR)/fairtracks.schema.json: $(OVERVIEW_FILES) $(CONVERT_SCRIPT)
	python $(CONVERT_SCRIPT) schema $(OVERVIEW_DIR)/fairtracks.overview.opml $(SCHEMA_DIR)/fairtracks.schema.json

$(EXAMPLE_DIR)/fairtracks_%.example.json: $(OVERVIEW_DIR)/fairtracks_%.overview.opml $(CONVERT_SCRIPT)
	python $(CONVERT_SCRIPT) example $(OVERVIEW_DIR)/fairtracks_$*.overview.opml $(EXAMPLE_DIR)/fairtracks_$*.example.json

$(EXAMPLE_DIR)/fairtracks.example.json: $(OVERVIEW_FILES) $(CONVERT_SCRIPT)
	python $(CONVERT_SCRIPT) example $(OVERVIEW_DIR)/fairtracks.overview.opml $(EXAMPLE_DIR)/fairtracks.example.json
