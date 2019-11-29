![alt text](docs/fairtracks_logo.png "FAIRtracks logo")

# FAIRtracks - metadata standard for genomic tracks

FAIRtracks is a set of JSON Schemas developed through the ELIXIR implementation study: 
"FAIRification of Genomic Tracks", as a minimal standard for genomic track metadata. For more 
information on the implementation study, please check out:
 
https://fairtracks.github.io/

## Overview of structure of the FAIRtracks standard

The FAIRtracks standard consists of a main JSON Schema and a set of subschemas. A JSON document 
of track metadata must validate towards the main FAIRtracks JSON Schema to be said to follow 
the standard.

### Documentation of the FAIRtracks JSON Schemas

- The main FAIRtracks JSON Schema is simply named `fairtracks.schema.json` and is documented here:

  Title | JSON Schema   | Schema documentation | Example JSON document
  ----- | ------------- | -------------------- | ---------------------
  FAIRtracks JSON Schema | [fairtracks.schema.json](json/schema/fairtracks.schema.json) | [fairtracks.schema.md](docs/fairtracks.schema.md) | [fairtracks.example.json](json/example/fairtracks.example.json)

- This top-level FAIRtracks JSON Schema contains, in addition to some general metadata fields, four 
  arrays of JSON sub-documents for the four main object types in FAIRtracks: `studies`, `experiments`, `samples`, 
  and `tracks`. Each of these object types are described in a separate sub-schema:

  Title | JSON Schema   | Schema documentation | Example JSON document
  ----- | ------------- | -------------------- | ---------------------
  Study | [fairtracks_study.schema.json](json/schema/fairtracks_study.schema.json) | [fairtracks_study.schema.md](docs/fairtracks_study.schema.md) | [fairtracks_study.example.json](json/example/fairtracks_study.example.json)
  Experiment | [fairtracks_experiment.schema.json](json/schema/fairtracks_experiment.schema.json) | [fairtracks_experiment.schema.md](docs/fairtracks_experiment.schema.md) | [fairtracks_experiment.example.json](json/example/fairtracks_experiment.example.json)
  Sample | [fairtracks_sample.schema.json](json/schema/fairtracks_sample.schema.json) | [fairtracks_sample.schema.md](docs/fairtracks_sample.schema.md) | [fairtracks_sample.example.json](json/example/fairtracks_sample.example.json)
  Track | [fairtracks_track.schema.json](json/schema/fairtracks_track.schema.json) | [fairtracks_track.schema.md](docs/fairtracks_track.schema.md) | [fairtracks_track.example.json](json/example/fairtracks_track.example.json)

- FAIRtracks also contains the following convenience sub-schemas:

  Title | JSON Schema   | Schema documentation | Example JSON document
  ----- | ------------- | -------------------- | ---------------------
  Phenotype | [fairtracks_phenotype.schema.json](json/schema/fairtracks_phenotype.schema.json) | [fairtracks_phenotype.schema.md](docs/fairtracks_phenotype.schema.md) | [fairtracks_phenotype.example.json](json/example/fairtracks_phenotype.example.json)
  Contact | [fairtracks_contact.schema.json](json/schema/fairtracks_contact.schema.json) | [fairtracks_contact.schema.md](docs/fairtracks_contact.schema.md) | [fairtracks_contact.example.json](json/example/fairtracks_contact.example.json)


## Making changes to the standard

### Dependencies for running the scripts

- Linux-like shell with "sh" or one of its subtypes, e.g. "bash". Mac OS X will do, but you 
  probably need to install either XCode (from the App Store) or the 
  [XCode Command line tools](https://developer.apple.com/download/more/?=command%20line%20tools).
- Python >= 3.6
- Node.js (>= v8) [and npm (>= 3.10.8), which is typically included with Node.js]
- git (relatively recent version is probably best)
- On Mac OS X, all the above can be installed using [HomeBrew](https://brew.sh/index_nb).
- An OPML editor is also recommended, but not required. See 
  [OPML editors](opml-editors) below for more information.

### Contributing

1. Create personal fork in GitHub ("Fork" button).
2. Clone the fork to your computer (e.g., ``git clone https://github.com/myusername/fairtracks_standard.git``).
3. Run ``make raw``, and edit the raw OPML files to your liking. For more information about the
   ``make`` targets, see [below](#overview-of-file-types-and-auto-generation).
4. Run ``make`` or ``make all`` until you are satisfied with the changes.
5. Run ``make rawclean`` to remove the raw OPML files before committing.
6. Commit and push your changes to a feature branch in your personal fork and create a pull 
   request, as described in the standard.
   [GitHub Flow workflow](https://guides.github.com/introduction/flow/).
7. Once the Pull Request is accepted:
   - Pull the latest changes in the ``master`` branch to your local repo.
   - Rebase your feature branch on top of ``master``.
   - Make sure that all commits are consistently built. The automatically installed 
     ``git-hooks`` will also check for consistency. To make a commit consistent, rebuild it 
     with the ``rebuild_all.sh`` script. To clean up previous commits, use interactive rebase as
     described under [1b. make git-hooks](#1-automatic-make-targets-for-initial-setup) below.
8. Force push your feature branch to your personal fork, which should update the pull request, and
   notify us.

### Overview of file types and auto-generation

There is an inherent order to the different types of files in this repo, defined in the `Makefile`.
The FAIRtracks standard is fully defined in the OPML files found under `json/overview`, and all 
the JSON Schema and JSON example files are automatically generated based on those files. Such 
automatic file generation are handled by various `make` targets:

### 1. Automatic `make` targets for initial setup

These `make` targets are run automatically if needed by the other `make` 
targets, but are also available for manual use if there is need.

a. `make .venv`
  - Autogenerates a Python virtual environment in the `.venv` directory, 
    if not already present. In case the Python executable you want to link up to the virtual
    environment is located in a non-standard path, you can use the environment variable `
    PYTHON_EXE` before the first `make .venv` command. For instance:

    ```bash
    PYTHON_EXE=/path/to/my/python3 make .venv
    ```

b. `make git-hooks`
  - Installs the version-controlled git hooks into the local repo. The git hooks makes sure that: 
  
    1. All changed files are committed together
    2. All secondary files have been recompiled with `make`
     
    The checks are run before git commits or remote pushes is finalized.
    
    It is especially important that the git hooks are installed before merging or rebasing is done, 
    as the SHA256 signatures of the JSON files may then need to be recalculated (by `make`) on 
    merged/rebased commits. To fix such issues (which will appear when trying a remote push) one 
    will need to carry out an interactive rebase:
    
    1. Start interactive rebase: `git rebase -i $FIRST_COMMIT^`,
       where `$FIRST_COMMIT` is the first commit that need editing (you can find this in the log
       messages from the failed remote push).
    2. In the editor that appears, replace `pick` with `edit` for the commits that needs editing. 
       You should also at this point plan to clean up your commits by reordering or squashing them, 
       as well as improving the commit messages.
    3. `./rebuild_all.sh`
    4. For all changed files: `git add $FILE`
    5. `git commit --amend`
    6. `git rebase --continue`
    7. Repeat iii-vi for all commits selected for editing.

c. ``make jsonschema2md``
  - Installs the node package ["jsonschema2md"](https://github.com/adobe/jsonschema2md)
    which is used to generate the JSON Schema documentation. The package is installed under 
    "node_modules", together with all its dependencies.
    
### 2. Main process (with `make` targets) for making changes to the standard

The following process should be followed when changing the contents of the `FAIRtracks` standard
itself:

a. `make raw`
  - This makes copies of the existing *.opml files into similarly names *.raw.opml files.
  - You only need to run this once. If you accidentally run the command twice, any existing raw 
    OPML files will be renamed to *.raw.opml.old.
  - The raw OPML files are ignored by git and can be edited in an OPML editor of choice. See 
    [OPML file format](#opml-file-format) below for more information.

b. `make` or `make all`
  - After the raw OPML files have been edited, `make` runs:
    - `make opml` to generate cleaned up,
    standardized versons of the raw OPML files, and 
    - `make json` to generate JSON Schema files
    and related example JSON files from the cleaned up OPML files.
    - `make docs` to generate Markdown documentation files under the ``docs`` directory.
    
    All the generated JSON Schema files, as well as the top-level JSON example file, include a 
    stable SHA256 signature of their contents.
    
### 3. `make` targets for overview and cleanup

a. `make signature`
  - Computes and prints the stable SHA256 signature for all the JSON files.

b. `make rawclean`
  - Removes all raw OPML and related .old files.
  - Should only be run if you are sure that all changes in the raw OPML files have propagated to
    other files, i.e. you should make sure that you have run `make` first.
      
c. `make clean`
  - Runs `make rawclean` and also removes the virtual environment in the `.venv` directory.

## OPML file format

[OPML](https://en.wikipedia.org/wiki/OPML) is a standard file format defined specifically for 
outlining software.

### OPML editors
OPML can be edited by specific outlining tools, but as the format it is a subtype of XML 
one can also use generic XML editors:
  - On Mac OS, we recommend using the commercial tool 
    [OmniOutliner](https://www.omnigroup.com/omnioutliner), as there are really no open source
    alternatives with similar user interface. 
  - As an open source, platform-agnostic alternative, we recommend 
    [TreeLine](http://treeline.bellz.org/).
  - The OPML files can of course also be edited manually.
 
### How the FAIRtracks standard is defined in OPML
- Each `<outline>` tag defines a JSON property, with the hierarchy defined by the XML hierarchy.
- The details for each JSON property is defined by a set of possible attributes for each tag. Many
  of the standard JSON Schema keywords are directly supported:

  Attribute | Description
  --------- | -----------
  `_key` | The key of the JSON property.
  `const` | Constant value (the only value allowed).
  `default` | Default value if no value is provided.
  `description` | Human-readable description of the property.
  `enum` | Set of values allowed, separated by <code>&#124;</code>.
  `examples` | Set of example values, separated by <code>&#124;</code>.  All properties must have the same number of examples (or none) within each JSON Schema.
  `format` | Format of current string property. Supports all of the standard JSON Schema formats, and in addition we support two custom formats: "curie" and "term", for respectively Identifiers.org-resolvable CURIEs and ontology terms.
  `minItems` | Minimal number of items in current array property.
  `pattern` | Regexp format for current string property.
  `ref` | JSON Pointer to another JSON Schema to import under the property.
  `required` | If `"true"` the current property is required.
  `title` | Title of the JSON Schema
  `type` | Data type of the current property: string, object, array, number, or boolean.
  
  In addition to the standard JSON keywords detailed above, a set of extended attributes have been 
  defined:
  
  Attribute | Description
  --------- | -----------
  `ancestors` | Ontology labels, separated by <code>&#124;</code>, used to validate properties in `term` format. At least one of these terms must be an ancestor of the value in one of the specified ontologies.
  `autogenerated` | If `true`, the contents of the current property will be filled automatically by the FAIRtracks autogenerate service (to be implemented later).
  `comments` | Comments that will remain in the OPML files only.
  `constIf` | If the specified `if_property` has the specified `if_value`, the current property must follow the specified `then_value`, interpreted as `const`.
  `foreignProperty` | JSON Pointer to a linked identifier property in another schema. Two JSON documents, one following the current schema and the other following the foreign schema, are related if the values in the two linked properties are the same.
  `matchType` | Validation rule. For properties in `curie` format: either `basic`, `loose`, or `canonical`. For properties in `curie` format: either `exact`, `suffix`, or `label`.
  `namespace` | Namespaces, separated by <code>&#124;</code>, registered in http://identifiers.org. Is used to validate `curie` values.
  `ontology` | Ontology URLs, separated by <code>&#124;</code>, in OWL format. To be used to validate properties in `term` format.
  `requireAnyOf` | For every level of the object hierarchy, at least one of the properties with `requireAnyOf="true"` at that level is `required`.
  `requireIf` | If the specified `if_property` has the specified `if_value`, the current property is `required`.
  `unique` | If `"true"` the value of the current property must be unique across all JSON documents.
  
  For more information, please visit the FAIRtracks validator GitHub repository (see [VALIDATION.md](VALIDATION.md) for directions).

- The `constif` and `requireIf` attributes require the value to follow a specific pattern:

  Pattern part | Description | Attribute(s) | Obligatory | Example
  ------------ | ----------- | ------------ | ---------- | -------
  `if_property_parent/` | Parent of if_property | `constIf` `requireIf` | No | `technique/`
  `if_property=` | Sibling property (of current property) to check. (If `if_property_parent` is defined this will be a sibling-child.) | `constIf` `requireIf`  | Yes | `term_url=`
  `if_value` | Value to check for | `constIf` `requireIf`  | Yes | `http://purl.obolibrary.org/obo/OBI_0001853`
  `;` | If-then delimiter | `constIf` | Yes | `;`
  `then_property=` | Child-property of current property to get `const` value | `constIf` | No | `term_url=`
  `then_value` | `const` value for current property (or a child if `then_property` is defined) | `constIf` | Yes | `http://purl.obolibrary.org/obo/SO_0000685`
  <code>&#124;</code> | Pattern delimiter (between patterns if more than one) | `constIf` `requireIf` | No |
  
- In order to support multiple OPML editors, the first `<outline>` tag in the OPML files (the one 
  with `_text="#title"`) should contain all properties in alphabetical order, with an attached value
  (typically `"."` or `"0"`). These parameters are ignored for that line (as it is just used to generate
  the `title` of the JSON Schema).

- When adding, removing, or renaming attributes:
  - Please update the first `<outline>` tag (with `_text="#title"`) for all OPML files, as 
    described directly above. 
  - In most cases, new attributes should also be added to the 
    `ATTRIBS_TO_IMPORT` constant in the [opml_to_json.py](scripts/python/opml_to_json.py) script, 
    in the order in which they should appear in the generated JSON Schemas.

## Validation

- Please visit the [VALIDATION.md](VALIDATION.md) document.
