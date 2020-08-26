# Version URL to "Ontology for Biomedical Investigations" Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/document/properties/ontology_versions/properties/http://purl.obolibrary.org/obo/obi.owl
```

URL to the version of "Ontology for Biomedical Investigations" used in the JSON document


| Abstract            | Extensible | Status         | Identifiable            | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                               |
| :------------------ | ---------- | -------------- | ----------------------- | :---------------- | --------------------- | ------------------- | ---------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | Unknown identifiability | Forbidden         | Allowed               | none                | [fairtracks.schema.json\*](../json/schema/fairtracks.schema.json "open original schema") |

## obi.owl Type

`string` ([Version URL to "Ontology for Biomedical Investigations"](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used-properties-version-url-to-ontology-for-biomedical-investigations.md))

## obi.owl Constraints

**pattern**: the string must match the following regular expression: 

```regexp
^http://purl.obolibrary.org/obo/obi/[0-9]+-[0-9]+-[0-9]+/obi.owl$
```

[try pattern](https://regexr.com/?expression=%5Ehttp%3A%2F%2Fpurl.obolibrary.org%2Fobo%2Fobi%2F%5B0-9%5D%2B-%5B0-9%5D%2B-%5B0-9%5D%2B%2Fobi.owl%24 "try regular expression with regexr.com")

**URI**: the string must be a URI, according to [RFC 3986](https://tools.ietf.org/html/rfc4291 "check the specification")

## obi.owl Examples

```json
"http://purl.obolibrary.org/obo/obi/2020-04-23/obi.owl"
```
