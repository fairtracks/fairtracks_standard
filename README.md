# FAIRtracks - metadata standard for genomic tracks

FAIRtracks has been developed through the ELIXIR implementation study: "FAIRification of Genomic 
Tracks", as a minimal standard for genomic track metadata. More to come about this...

## Making changes

There is an inherent order to the different types of files in this repo, and making (or suggesting)
changes to the standard requires following a specific set of changes/commands:

1. `make raw`
    - This makes copies of the existing *.opml files into similarly names *.raw.opml files.
    - You need only run this once. If you accidentally run the command twice, any existing raw 
      OPML files will be renamed to *.raw.opml.old.
    - The raw OPML files are ignored by git and can be edited in an OPML editor of choice. On Mac
      OS, we recommend using the commercial tool 
      [OmniOutliner](https://www.omnigroup.com/omnioutliner), as there are really no open source
      alternatives with similar user interface. As an open source, platform-agnostic alternative, 
      we recommend [TreeLine](http://treeline.bellz.org/).
2. `make`
    - After the raw OPML files have been edited, `make` runs `make opml` to generate cleaned up,
      standardized versons of the raw OPML files, while `make json` generates JSON Schema files
      and related example JSON files. All the generated JSON and JSON Schema files include the
      stable SHA256 signature from the source OPML file.
3. `make clean` (optional)
    - Removes all raw OPML and related .old files.
    - Should only be run if you are sure that all changes in the raw OPML files have propagated to
      other files, i.e. you should make sure that you have run `make` first.
4. `make signature` (optional)
    - Computes and prints the stable SHA256 signature from all the OPML files.

### Note about making changes to properties

In order to support multiple OPML editors, the first `<outline>` tag in the OPML files (the one 
with `_text="#title"`) should contain all properties in alphabetical order, with an attached value
(typically `.` or `0`). These parameters are ignored for that line (as it is just used to generate
the `title` of the JSON schema). Please update this line for all OPML files when adding, removing 
or renaming properties. In most cases, new properties should be added to the `ATTRIBS_TO_IMPORT` 
constant in the [opml_to_json.py](scripts/python/opml_to_json.py) script.

## Dependencies

- Even though the scripts herein will work on both Python 2 and 3, the current standard have been 
generated using Python 3.7. Python 2 (and perhaps other Python 3 versions) will generate 
unnecessary whitespace changes to the files. In case the Python executable you want to use 
is named differently (i.e. python3) or is located in a non-standard path, you can use the make
variable `PYTHON_EXE`. For instance:

```bash
make PYTHON_EXE=python3 signature
```

## Validation

- Please visit the [VALIDATION.md](VALIDATION.md) document.
