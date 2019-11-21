VENV_DIR = .venv
OVERVIEW_DIR = json/overview
EXAMPLE_DIR = json/examples
SCHEMA_DIR = json/schema
VENV_ACTIVATE = . $(VENV_DIR)/bin/activate
INSTALL_GIT_HOOKS_SCRIPT = scripts/sh/install_hooks.sh
INSTALL_VENV_SCRIPT = scripts/sh/install_venv.sh
CLEANUP_OPML_SCRIPT = scripts/python/cleanup_opml.py
CREATE_RAW_OPML_SCRIPT = scripts/python/create_raw_opml.py
CONVERT_SCRIPT = scripts/python/opml_to_json.py
COMPUTE_SIGNATURE_SCRIPT = scripts/python/json_signature.py

OVERVIEW_FILES := $(wildcard $(OVERVIEW_DIR)/*.overview.opml)
OVERVIEW_RAW_FILES := $(wildcard $(OVERVIEW_DIR)/*.overview.raw.opml)
OVERVIEW_RAW_OLD_FILES := $(wildcard $(OVERVIEW_DIR)/*.overview.raw.opml.old)
EXAMPLE_FILES := $(wildcard $(EXAMPLE_DIR)/*.example.json)
SCHEMA_FILES := $(wildcard $(SCHEMA_DIR)/*.schema.json)

.ONESHELL:

.PHONY: raw json opml install clean clean_raw


# Rules

all: opml json

$(VENV_DIR): $(INSTALL_VENV_SCRIPT)
	$(INSTALL_VENV_SCRIPT) $(VENV_DIR)

git-hooks: $(INSTALL_GIT_HOOKS_SCRIPT) | $(VENV_DIR)
	$(INSTALL_GIT_HOOKS_SCRIPT)

raw: | $(VENV_DIR)
	$(VENV_ACTIVATE)
	python3 $(CREATE_RAW_OPML_SCRIPT) $(OVERVIEW_DIR)

json: $(SCHEMA_FILES) $(EXAMPLE_FILES)

signature: | $(VENV_DIR)
	$(VENV_ACTIVATE)
	python3 $(COMPUTE_SIGNATURE_SCRIPT) $(SCHEMA_FILES)
	python3 $(COMPUTE_SIGNATURE_SCRIPT) $(EXAMPLE_FILES)

opml: $(OVERVIEW_RAW_FILES)

rawclean:
	rm -f $(OVERVIEW_RAW_FILES) $(OVERVIEW_RAW_OLD_FILES)

clean: rawclean
	rm -rf $(VENV_DIR)

$(SCHEMA_DIR)/fairtracks_%.schema.json: $(OVERVIEW_DIR)/fairtracks_%.overview.opml $(CONVERT_SCRIPT) $(COMPUTE_SIGNATURE_SCRIPT) | $(VENV_DIR)
	$(VENV_ACTIVATE)
	python3 $(CONVERT_SCRIPT) schema $(OVERVIEW_DIR)/fairtracks_$*.overview.opml $(SCHEMA_DIR)/fairtracks_$*.schema.json

$(SCHEMA_DIR)/fairtracks.schema.json: $(OVERVIEW_FILES) $(CONVERT_SCRIPT) $(COMPUTE_SIGNATURE_SCRIPT) | $(VENV_DIR)
	$(VENV_ACTIVATE)
	python3 $(CONVERT_SCRIPT) schema $(OVERVIEW_DIR)/fairtracks.overview.opml $(SCHEMA_DIR)/fairtracks.schema.json

$(EXAMPLE_DIR)/fairtracks_%.example.json: $(OVERVIEW_FILES) $(CONVERT_SCRIPT) $(COMPUTE_SIGNATURE_SCRIPT) | $(VENV_DIR)
	$(VENV_ACTIVATE)
	python3 $(CONVERT_SCRIPT) single_example $(OVERVIEW_DIR)/fairtracks_$*.overview.opml $(EXAMPLE_DIR)/fairtracks_$*.example.json

$(EXAMPLE_DIR)/fairtracks.example.json: $(OVERVIEW_FILES) $(CONVERT_SCRIPT) $(COMPUTE_SIGNATURE_SCRIPT) | $(VENV_DIR)
	$(VENV_ACTIVATE)
	python3 $(CONVERT_SCRIPT) full_example $(OVERVIEW_DIR)/fairtracks.overview.opml $(EXAMPLE_DIR)/fairtracks.example.json

$(OVERVIEW_DIR)/fairtrack%.overview.opml: $(OVERVIEW_DIR)/fairtrack%.overview.raw.opml $(CLEANUP_OPML_SCRIPT) | $(VENV_DIR)
	$(VENV_ACTIVATE)
	python3 $(CLEANUP_OPML_SCRIPT) $(OVERVIEW_DIR)/fairtrack$*.overview.raw.opml $(OVERVIEW_DIR)/fairtrack$*.overview.opml
