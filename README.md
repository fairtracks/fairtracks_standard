# FAIRtracks - metadata standard for genomic tracks

FAIRtracks has been developed through the ELIXIR implementation study: "FAIRification of Genomic 
Tracks", as a minimal standard for genomic track metadata. For more information on the 
implementation study, please check out:
 
https://fairtracks.github.io/

## Making changes to the standard

There is an inherent order to the different types of files in this repo, defined in the `Makefile`.
The FAIRtracks standard is fully defined in the OPML files found under `json/overview`, and all 
the JSON Schema and JSON example files are generated based on those files. Such file generation are 
handled by various `make`targets:

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
  - Python version >= 3.6 is required.

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
    3. `./make_all.sh`
    4. For all changed files: `git add $FILE`
    5. `git commit --amend`
    6. `git rebase --continue`
    7. Repeat iii-vi for all commits selected for editing. 
    
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
 
### How the FAIRtracks standard is defined in OPML
- Each `<outline>` tag defines a JSON element, with the hierarchy defined by the XML hierarchy.
- The details for each JSON element is defined by a set of possible attributes for each tag. Many
  of the standard JSON Schema properties are directly supported:

  Attribute | Description
  --------- | -----------
  `_text` | The title of the metadata element.
  `const` | Constant value (the only value allowed).
  `default` | Default value if no value is provided.
  `description` | Human-readable description of the element.
  `enum` | Set of values allowed, separated by <code>&#124;</code>.
  `examples` | Set of example values, separated by <code>&#124;</code>.  All elements must have the same number of examples (or none) within each JSON Schema.
  `format` | Format of current string element. Supports all of the standard JSON formats, and in addition we support two custom formats: "curie" and "term", for respectively Identifiers.org-resolvable CURIEs and ontology terms.
  `minItems` | Minimal number of items in current array element.
  `pattern` | Regexp format for current string element.
  `ref` | JSON reference to another JSON schema to import below the element.
  `required` | If `"true"` the current element must have a value.
  `type` | Data type of the current element: string, object, array, number, or boolean.
  
  In addition to the standard JSON properties detailed above, a set of extensions have been 
  defined:
  
  Attribute | Description
  --------- | -----------
  `ancestors` | Ontology labels, separated by <code>&#124;</code>, used to validate elements in `term` format. At least one of these terms must be an ancestor of the value in one of the specified ontologies.
  `anyOf` | At least one of the elements at the same level with `anyOf="true"` value must be filled.
  `autogenerated` | If `true`, the contents of the current element will be filled automatically by the FAIRtracks autogenerate service (to be implemented later).
  `comments` | Comments that will remain in the OPML files only.
  `constIf` | If the specified element has a particular value, the current element must also have a particular (other) value.
  `foreignProperty` | JSON Reference to an identifier element in another schema. Objects of the current schema and the foreign schema are linked if the values are the same.
  `matchType` | Validation rule. For elements in `curie` format: either `basic`, `loose`, or `canonical`. For elements in `curie` format: either `exact`, `suffix`, or `label`.
  `namespace` | Namespaces, separated by <code>&#124;</code>, registered in http://identifiers.org. Is used to validate `curie` values.
  `ontology` | Ontology URLs, separated by <code>&#124;</code>, in OWL format. To be used to validate elements in `term` format.
  `requireIf` | If the specified element has a particular value, the current element is `required` (must have a value).
  `unique` | If `"true"` the value of the current element must be unique across all JSON documents.
  
  For more information, please visit the FAIRtracks validator GitHub repository (see [VALIDATION.md](VALIDATION.md) for directions).

- The `constif` and `requireIf` attributes require the value to follow a specific pattern:

  Pattern part | Description | Attribute(s) | Obligatory | Example
  ------------ | ----------- | ------------ | ---------- | -------
  `if_property_parent->` | Parent of if_property | `constIf` `requireIf` | No | `technique->`
  `if_property=` | Sibling element (of current element) to check. (If `if_property_parent` is defined this will be a sibling-child.) | `constIf` `requireIf`  | Yes | `term_url=`
  `if_value` | Value to check for | `constIf` `requireIf`  | Yes | `http://purl.obolibrary.org/obo/OBI_0001853`
  `;` | If-then delimiter | `constIf` | Yes | `;`
  `then_property=` | Child-property of current element to get `const` value | `constIf` | No | `term_url=`
  `then_value` | `const` value for current element (or a child if `then_property` is defined) | `constIf` | Yes | `http://purl.obolibrary.org/obo/SO_0000685`
  <code>&#124;</code> | Pattern delimiter (between patterns if more than one) | `constIf` `requireIf` | No |
  
- In order to support multiple OPML editors, the first `<outline>` tag in the OPML files (the one 
  with `_text="#title"`) should contain all properties in alphabetical order, with an attached value
  (typically `"."` or `"0"`). These parameters are ignored for that line (as it is just used to generate
  the `title` of the JSON schema). Please update this line for all OPML files when adding, removing 
  or renaming attributes. In most cases, new attributes should also be added to the 
  `ATTRIBS_TO_IMPORT` constant in the [opml_to_json.py](scripts/python/opml_to_json.py) script.

## Validation

- Please visit the [VALIDATION.md](VALIDATION.md) document.
