# Version URL to "EDAM Ontology" Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions/properties/http://edamontology.org/EDAM.owl
```

URL to the version of "Bioinformatics operations, data types, formats, identifiers and topics" (EDAM Ontology) used in the JSON document


| Abstract            | Extensible | Status         | Identifiable            | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                               |
| :------------------ | ---------- | -------------- | ----------------------- | :---------------- | --------------------- | ------------------- | ---------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | Unknown identifiability | Forbidden         | Allowed               | none                | [fairtracks.schema.json\*](../json/schema/fairtracks.schema.json "open original schema") |

## EDAM.owl Type

`string` ([Version URL to "EDAM Ontology"](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used-properties-version-url-to-edam-ontology.md))

## EDAM.owl Constraints

**pattern**: the string must match the following regular expression: 

```regexp
^http://edamontology.org/EDAM_[0-9]+\.[0-9]+.owl$
```

[try pattern](https://regexr.com/?expression=%5Ehttp%3A%2F%2Fedamontology.org%2FEDAM_%5B0-9%5D%2B%5C.%5B0-9%5D%2B.owl%24 "try regular expression with regexr.com")

**URI**: the string must be a URI, according to [RFC 3986](https://tools.ietf.org/html/rfc4291 "check the specification")

## EDAM.owl Examples

```json
"http://edamontology.org/EDAM_1.21.owl"
```
