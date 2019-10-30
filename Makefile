PYTHON_EXE = python
CLEANUP_OPML_SCRIPT = scripts/python/cleanup_opml.py
CREATE_RAW_OPML_SCRIPT = scripts/python/create_raw_opml.py
CONVERT_SCRIPT = scripts/python/opml_to_json.py
COMPUTE_SIGNATURE_SCRIPT = scripts/python/opml_signature.py
OVERVIEW_DIR = json/overview
EXAMPLE_DIR = json/examples
SCHEMA_DIR = json/schema

OVERVIEW_FILES := $(wildcard $(OVERVIEW_DIR)/*.overview.opml)
OVERVIEW_RAW_FILES := $(wildcard $(OVERVIEW_DIR)/*.overview.raw.opml)
OVERVIEW_RAW_OLD_FILES := $(wildcard $(OVERVIEW_DIR)/*.overview.raw.opml.old)
EXAMPLE_FILES := $(wildcard $(EXAMPLE_DIR)/*.example.json)
SCHEMA_FILES := $(wildcard $(SCHEMA_DIR)/*.schema.json)

.PHONY: raw json opml


# Rules

all: opml json

raw:
	$(PYTHON_EXE) $(CREATE_RAW_OPML_SCRIPT) $(OVERVIEW_DIR)

json: $(SCHEMA_FILES) $(EXAMPLE_FILES)

signature:
	$(PYTHON_EXE) $(COMPUTE_SIGNATURE_SCRIPT) $(OVERVIEW_FILES)

opml: $(OVERVIEW_RAW_FILES)

clean:
	rm $(OVERVIEW_RAW_FILES) $(OVERVIEW_RAW_OLD_FILES)

$(SCHEMA_DIR)/fairtracks_%.schema.json: $(OVERVIEW_DIR)/fairtracks_%.overview.opml $(CONVERT_SCRIPT)
	$(PYTHON_EXE) $(CONVERT_SCRIPT) schema $(OVERVIEW_DIR)/fairtracks_$*.overview.opml $(SCHEMA_DIR)/fairtracks_$*.schema.json

$(SCHEMA_DIR)/fairtracks.schema.json: $(OVERVIEW_FILES) $(CONVERT_SCRIPT)
	$(PYTHON_EXE) $(CONVERT_SCRIPT) schema $(OVERVIEW_DIR)/fairtracks.overview.opml $(SCHEMA_DIR)/fairtracks.schema.json

$(EXAMPLE_DIR)/fairtracks_%.example.json: $(OVERVIEW_DIR)/fairtracks_%.overview.opml $(CONVERT_SCRIPT)
	$(PYTHON_EXE) $(CONVERT_SCRIPT) example $(OVERVIEW_DIR)/fairtracks_$*.overview.opml $(EXAMPLE_DIR)/fairtracks_$*.example.json

$(EXAMPLE_DIR)/fairtracks.example.json: $(OVERVIEW_FILES) $(CONVERT_SCRIPT)
	$(PYTHON_EXE) $(CONVERT_SCRIPT) example $(OVERVIEW_DIR)/fairtracks.overview.opml $(EXAMPLE_DIR)/fairtracks.example.json

$(OVERVIEW_DIR)/fairtrack%.overview.opml: $(OVERVIEW_DIR)/fairtrack%.overview.raw.opml $(CLEANUP_OPML_SCRIPT)
	$(PYTHON_EXE) $(CLEANUP_OPML_SCRIPT) $(OVERVIEW_DIR)/fairtrack$*.overview.raw.opml $(OVERVIEW_DIR)/fairtrack$*.overview.opml
