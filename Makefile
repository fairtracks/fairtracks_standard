MAKEFLAGS += -L

VENV_DIR = .venv
LOCAL_GIT_HOOKS_DIR = scripts/git-hooks
GIT_HOOKS_DIR = .git/hooks
OVERVIEW_DIR = json/overview
EXAMPLE_DIR = json/examples
SCHEMA_DIR = json/schema
VENV_ACTIVATE = . $(VENV_DIR)/bin/activate
INSTALL_VENV_SCRIPT = scripts/sh/install_venv.sh
CLEANUP_OPML_SCRIPT = scripts/python/cleanup_opml.py
CREATE_RAW_OPML_SCRIPT = scripts/python/create_raw_opml.py
CONVERT_SCRIPT = scripts/python/opml_to_json.py
COMPUTE_SIGNATURE_SCRIPT = scripts/python/json_signature.py

LOCAL_GIT_HOOKS_FILES := $(wildcard $(LOCAL_GIT_HOOKS_DIR)/*.sh)
GIT_HOOKS_FILES := $(patsubst $(LOCAL_GIT_HOOKS_DIR)/%,$(GIT_HOOKS_DIR)/%,${LOCAL_GIT_HOOKS_FILES:.sh=})
OVERVIEW_FILES := $(wildcard $(OVERVIEW_DIR)/*.overview.opml)
OVERVIEW_RAW_FILES := $(wildcard $(OVERVIEW_DIR)/*.overview.raw.opml)
OVERVIEW_RAW_OLD_FILES := $(wildcard $(OVERVIEW_DIR)/*.overview.raw.opml.old)
EXAMPLE_FILES := $(wildcard $(EXAMPLE_DIR)/*.example.json)
SCHEMA_FILES := $(wildcard $(SCHEMA_DIR)/*.schema.json)

.ONESHELL:

.PHONY:  all git-hooks venv raw json signature opml rawclean clean


# Rules

all: opml json

$(GIT_HOOKS_DIR)/%: $(LOCAL_GIT_HOOKS_DIR)/%.sh Makefile
	ln -sf "$(shell realpath --relative-to=$(GIT_HOOKS_DIR) $<)" "$@"

git-hooks: $(GIT_HOOKS_FILES)

$(VENV_ACTIVATE): $(INSTALL_VENV_SCRIPT) Makefile | $(GIT_HOOKS_FILES)
	$(INSTALL_VENV_SCRIPT) $(VENV_DIR)

venv: $(VENV_ACTIVATE)

raw: $(VENV_ACTIVATE)
	$(VENV_ACTIVATE)
	python3 $(CREATE_RAW_OPML_SCRIPT) $(OVERVIEW_DIR)

signature: $(VENV_ACTIVATE)
	$(VENV_ACTIVATE)
	python3 $(COMPUTE_SIGNATURE_SCRIPT) $(SCHEMA_FILES)
	python3 $(COMPUTE_SIGNATURE_SCRIPT) $(EXAMPLE_FILES)

rawclean:
	rm -f $(OVERVIEW_RAW_FILES) $(OVERVIEW_RAW_OLD_FILES)

clean: rawclean
	rm -rf $(VENV_DIR)
	rm -f $(GIT_HOOKS_FILES)

opml: $(OVERVIEW_RAW_FILES)

json: $(SCHEMA_FILES) $(EXAMPLE_FILES)

$(SCHEMA_DIR)/fairtracks_%.schema.json: $(OVERVIEW_DIR)/fairtracks_%.overview.opml $(CONVERT_SCRIPT) $(COMPUTE_SIGNATURE_SCRIPT) $(VENV_ACTIVATE)
	$(VENV_ACTIVATE)
	python3 $(CONVERT_SCRIPT) schema $(OVERVIEW_DIR)/fairtracks_$*.overview.opml $(SCHEMA_DIR)/fairtracks_$*.schema.json

$(SCHEMA_DIR)/fairtracks.schema.json: $(OVERVIEW_DIR)/fairtracks.overview.opml $(CONVERT_SCRIPT) $(COMPUTE_SIGNATURE_SCRIPT) $(VENV_ACTIVATE)
	$(VENV_ACTIVATE)
	python3 $(CONVERT_SCRIPT) schema $(OVERVIEW_DIR)/fairtracks.overview.opml $(SCHEMA_DIR)/fairtracks.schema.json

$(EXAMPLE_DIR)/fairtracks_%.example.json: $(OVERVIEW_DIR)/fairtracks_%.overview.opml $(CONVERT_SCRIPT) $(COMPUTE_SIGNATURE_SCRIPT) $(VENV_ACTIVATE)
	$(VENV_ACTIVATE)
	python3 $(CONVERT_SCRIPT) single_example $(OVERVIEW_DIR)/fairtracks_$*.overview.opml $(EXAMPLE_DIR)/fairtracks_$*.example.json

$(EXAMPLE_DIR)/fairtracks.example.json: $(OVERVIEW_FILES) $(CONVERT_SCRIPT) $(COMPUTE_SIGNATURE_SCRIPT) $(VENV_ACTIVATE)
	$(VENV_ACTIVATE)
	python3 $(CONVERT_SCRIPT) full_example $(OVERVIEW_DIR)/fairtracks.overview.opml $(EXAMPLE_DIR)/fairtracks.example.json

$(OVERVIEW_DIR)/fairtrack%.overview.opml: $(OVERVIEW_DIR)/fairtrack%.overview.raw.opml $(CLEANUP_OPML_SCRIPT) $(VENV_ACTIVATE)
	$(VENV_ACTIVATE)
	python3 $(CLEANUP_OPML_SCRIPT) $(OVERVIEW_DIR)/fairtrack$*.overview.raw.opml $(OVERVIEW_DIR)/fairtrack$*.overview.opml
