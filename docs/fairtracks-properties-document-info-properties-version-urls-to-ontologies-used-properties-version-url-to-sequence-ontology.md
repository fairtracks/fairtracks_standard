# Version URL to "Sequence Ontology" Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions/properties/http://purl.obolibrary.org/obo/so.owl
```

URL to the version of "Sequence types and features ontology" used in the JSON document


| Abstract            | Extensible | Status         | Identifiable            | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                               |
| :------------------ | ---------- | -------------- | ----------------------- | :---------------- | --------------------- | ------------------- | ---------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | Unknown identifiability | Forbidden         | Allowed               | none                | [fairtracks.schema.json\*](../json/schema/fairtracks.schema.json "open original schema") |

## so.owl Type

`string` ([Version URL to "Sequence Ontology"](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used-properties-version-url-to-sequence-ontology.md))

## so.owl Constraints

**pattern**: the string must match the following regular expression: 

```regexp
^https://raw.githubusercontent.com/The-Sequence-Ontology/SO-Ontologies/v[0-9]+\.[0-9]+/releases/so-xp.owl/so.owl$
```

[try pattern](https://regexr.com/?expression=%5Ehttps%3A%2F%2Fraw.githubusercontent.com%2FThe-Sequence-Ontology%2FSO-Ontologies%2Fv%5B0-9%5D%2B%5C.%5B0-9%5D%2B%2Freleases%2Fso-xp.owl%2Fso.owl%24 "try regular expression with regexr.com")

**URI**: the string must be a URI, according to [RFC 3986](https://tools.ietf.org/html/rfc4291 "check the specification")

## so.owl Examples

```json
"https://raw.githubusercontent.com/The-Sequence-Ontology/SO-Ontologies/v3.1/releases/so-xp.owl/so.owl"
```
