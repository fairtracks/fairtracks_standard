MAKEFLAGS += -L

VENV_DIR = .venv
LOCAL_GIT_HOOKS_DIR = scripts/git-hooks
GIT_HOOKS_DIR = .git/hooks
NODE_MODULES_DIR = node_modules
OPML_DIR = opml
EXAMPLE_DIR = json/examples
BLUEPRINT_DIR = json/blueprint
SCHEMA_DIR = json/schema
DOCS_DIR = docs
README_FILE = README.md
README_TEMPLATE = README-template.md
VERSION_INI = version.ini

VENV_ACTIVATE = $(VENV_DIR)/bin/activate
INSTALL_GIT_HOOKS_SCRIPT = scripts/bash/install_git_hooks.sh
INSTALL_VENV_SCRIPT = scripts/bash/install_venv.sh
CLEANUP_OPML_SCRIPT = scripts/python/cleanup_opml.py
CREATE_RAW_OPML_SCRIPT = scripts/python/create_raw_opml.py
CONVERT_SCRIPT = scripts/python/opml_to_json.py
CLEANUP_DATA_SCRIPT = scripts/python/cleanup_data_json.py
COMPUTE_SIGNATURE_SCRIPT = scripts/python/json_signature.py
CLEANUP_DOCS_SCRIPT = scripts/python/cleanup_docs.py
SUBSTITUTE_SCRIPT = scripts/python/substitute_from_config.py

LOCAL_GIT_HOOKS_FILES := $(wildcard $(LOCAL_GIT_HOOKS_DIR)/*.sh)
GIT_HOOKS_FILES := $(patsubst $(LOCAL_GIT_HOOKS_DIR)/%,$(GIT_HOOKS_DIR)/%,${LOCAL_GIT_HOOKS_FILES:.sh=})
OPML_FILES := $(wildcard $(OPML_DIR)/*.overview.opml)
OPML_RAW_FILES := $(wildcard $(OPML_DIR)/*.overview.raw.opml)
OPML_RAW_OLD_FILES := $(wildcard $(OPML_DIR)/*.overview.raw.opml.old)
EXAMPLE_FILES := $(patsubst $(OPML_DIR)/%,$(EXAMPLE_DIR)/%,${OPML_FILES:.overview.opml=.example.json})
SCHEMA_FILES := $(patsubst $(OPML_DIR)/%,$(SCHEMA_DIR)/%,${OPML_FILES:.overview.opml=.schema.json})

JSONSCHEMA2MD_DIR = $(NODE_MODULES_DIR)/\@adobe/jsonschema2md
JSONSCHEMA2MD_BIN_PATH = $(NODE_MODULES_DIR)/.bin/jsonschema2md
DOCS_MARKDOWN_FILES := $(patsubst $(OPML_DIR)/%,$(DOCS_DIR)/%,${OPML_FILES:.overview.opml=.md})

.PHONY:  all git-hooks venv raw json signature opml rawclean clean docs


# Rules

all: opml json docs

$(VENV_ACTIVATE): $(INSTALL_VENV_SCRIPT) Makefile
	$(INSTALL_VENV_SCRIPT) $(VENV_DIR)

venv: $(VENV_ACTIVATE)

$(GIT_HOOKS_DIR)/%: $(LOCAL_GIT_HOOKS_DIR)/%.sh Makefile $(VENV_ACTIVATE)
	. $(VENV_ACTIVATE); $(INSTALL_GIT_HOOKS_SCRIPT) "$<" "$@"

git-hooks: $(GIT_HOOKS_FILES)

raw: $(GIT_HOOKS_FILES)
	. $(VENV_ACTIVATE); python3 $(CREATE_RAW_OPML_SCRIPT) $(OPML_DIR)

signature: $(GIT_HOOKS_FILES)
	. $(VENV_ACTIVATE); python3 $(COMPUTE_SIGNATURE_SCRIPT) $(SCHEMA_FILES)
	. $(VENV_ACTIVATE); python3 $(COMPUTE_SIGNATURE_SCRIPT) $(EXAMPLE_FILES)

rawclean:
	rm -f $(OPML_RAW_FILES) $(OPML_RAW_OLD_FILES)

clean: rawclean
	rm -rf $(VENV_DIR)
	rm -f $(GIT_HOOKS_FILES)
	rm -rf $(NODE_MODULES_DIR)

opml: $(OPML_FILES)

json: $(SCHEMA_FILES) $(EXAMPLE_FILES) $(BLUEPRINT_DIR)/blueprint_minimal.json

$(SCHEMA_DIR)/%.schema.json: $(OPML_DIR)/%.overview.opml $(VERSION_INI) $(CONVERT_SCRIPT) $(COMPUTE_SIGNATURE_SCRIPT) $(SUBSTITUTE_SCRIPT) $(GIT_HOOKS_FILES)
	. $(VENV_ACTIVATE); python3 $(SUBSTITUTE_SCRIPT) $(OPML_DIR)/$*.overview.opml $(OPML_DIR)/$*.overview.opml.tmp $(VERSION_INI)
	. $(VENV_ACTIVATE); python3 $(CONVERT_SCRIPT) schema $(OPML_DIR)/$*.overview.opml.tmp $(SCHEMA_DIR)/$*.schema.json
	rm $(OPML_DIR)/$*.overview.opml.tmp

$(EXAMPLE_DIR)/fairtracks_%.example.json: $(OPML_DIR)/fairtracks_%.overview.opml $(VERSION_INI) $(CONVERT_SCRIPT) $(COMPUTE_SIGNATURE_SCRIPT) $(SUBSTITUTE_SCRIPT) $(GIT_HOOKS_FILES)
	. $(VENV_ACTIVATE); python3 $(SUBSTITUTE_SCRIPT) $(OPML_DIR)/fairtracks_$*.overview.opml $(OPML_DIR)/fairtracks_$*.overview.opml.tmp $(VERSION_INI)
	. $(VENV_ACTIVATE); python3 $(CONVERT_SCRIPT) single_example $(OPML_DIR)/fairtracks_$*.overview.opml.tmp $(EXAMPLE_DIR)/fairtracks_$*.example.json
	rm $(OPML_DIR)/fairtracks_$*.overview.opml.tmp

$(EXAMPLE_DIR)/fairtracks.example.json: $(OPML_FILES) $(VERSION_INI) $(CONVERT_SCRIPT) $(COMPUTE_SIGNATURE_SCRIPT) $(SUBSTITUTE_SCRIPT) $(GIT_HOOKS_FILES)
	. $(VENV_ACTIVATE); python3 $(SUBSTITUTE_SCRIPT) $(OPML_DIR)/fairtracks.overview.opml $(OPML_DIR)/fairtracks.overview.opml.tmp $(VERSION_INI)
	. $(VENV_ACTIVATE); python3 $(CONVERT_SCRIPT) full_example $(OPML_DIR)/fairtracks.overview.opml.tmp $(EXAMPLE_DIR)/fairtracks.example.json
	rm $(OPML_DIR)/fairtracks.overview.opml.tmp

$(OPML_DIR)/fairtrack%.overview.opml: $(OPML_DIR)/fairtrack%.overview.raw.opml $(CLEANUP_OPML_SCRIPT) $(GIT_HOOKS_FILES)
	. $(VENV_ACTIVATE); python3 $(CLEANUP_OPML_SCRIPT) $(OPML_DIR)/fairtrack$*.overview.raw.opml $(OPML_DIR)/fairtrack$*.overview.opml

$(BLUEPRINT_DIR)/blueprint_minimal.json: $(EXAMPLE_DIR)/fairtracks.example.json $(CLEANUP_DATA_SCRIPT) $(GIT_HOOKS_FILES)
	mv $(BLUEPRINT_DIR)/blueprint_minimal.json $(BLUEPRINT_DIR)/blueprint_minimal.json.tmp
	. $(VENV_ACTIVATE); python3 $(CLEANUP_DATA_SCRIPT) $(BLUEPRINT_DIR)/blueprint_minimal.json.tmp $(EXAMPLE_DIR)/fairtracks.example.json $(BLUEPRINT_DIR)/blueprint_minimal.json
	#rm $(BLUEPRINT_DIR)/blueprint_minimal.json.tmp

$(README_FILE): $(README_TEMPLATE) $(VERSION_INI) $(SUBSTITUTE_SCRIPT) $(GIT_HOOKS_FILES)
	. $(VENV_ACTIVATE); python3 $(SUBSTITUTE_SCRIPT) $(README_TEMPLATE) $(README_FILE) $(VERSION_INI)

.SECONDARY: jsonschema2md

$(JSONSCHEMA2MD_BIN_PATH): Makefile package.json package-lock.json
	rm -rf $(NODE_MODULES_DIR)
	npm ci

jsonschema2md: $(JSONSCHEMA2MD_BIN_PATH) $(CLEANUP_DOCS_SCRIPT) $(GIT_HOOKS_FILES)
	rm -rf $(DOCS_DIR)/*.md
	. $(VENV_ACTIVATE); $(JSONSCHEMA2MD_BIN_PATH) --input $(SCHEMA_DIR) --out $(DOCS_DIR) -x - -n -p format ontology ancestors namespace matchType foreignProperty unique autogenerated
	. $(VENV_ACTIVATE); python3 $(CLEANUP_DOCS_SCRIPT) $(DOCS_DIR)/*.md

$(DOCS_MARKDOWN_FILES): jsonschema2md $(SCHEMA_FILES) ;

docs: $(README_FILE) $(DOCS_MARKDOWN_FILES)
