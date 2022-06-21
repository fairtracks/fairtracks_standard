# Version URL to "Cell Ontology" Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks.schema.json#/properties/document/properties/ontology_versions/properties/http://purl.obolibrary.org/obo/cl.owl
```

URL to the version of "Cell Ontology" used in the JSON document


| Abstract            | Extensible | Status         | Identifiable            | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                               |
| :------------------ | ---------- | -------------- | ----------------------- | :---------------- | --------------------- | ------------------- | ---------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | Unknown identifiability | Forbidden         | Allowed               | none                | [fairtracks.schema.json\*](../json/schema/fairtracks.schema.json "open original schema") |

## cl.owl Type

`string` ([Version URL to "Cell Ontology"](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used-properties-version-url-to-cell-ontology.md))

## cl.owl Constraints

**pattern**: the string must match the following regular expression: 

```regexp
^http://purl.obolibrary.org/obo/cl/releases/[0-9]+-[0-9]+-[0-9]+/cl.owl$
```

[try pattern](https://regexr.com/?expression=%5Ehttp%3A%2F%2Fpurl.obolibrary.org%2Fobo%2Fcl%2Freleases%2F%5B0-9%5D%2B-%5B0-9%5D%2B-%5B0-9%5D%2B%2Fcl.owl%24 "try regular expression with regexr.com")

**URI**: the string must be a URI, according to [RFC 3986](https://tools.ietf.org/html/rfc4291 "check the specification")

## cl.owl Examples

```json
"http://purl.obolibrary.org/obo/cl/releases/2020-05-21/cl.owl"
```
