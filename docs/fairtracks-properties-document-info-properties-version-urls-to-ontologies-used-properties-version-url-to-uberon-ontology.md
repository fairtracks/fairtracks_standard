# Version URL to "Uberon Ontology" Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions/properties/http://purl.obolibrary.org/obo/uberon.owl
```

URL to the version of  "Uber-anatomy ontology" used in the JSON document


| Abstract            | Extensible | Status         | Identifiable            | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                               |
| :------------------ | ---------- | -------------- | ----------------------- | :---------------- | --------------------- | ------------------- | ---------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | Unknown identifiability | Forbidden         | Allowed               | none                | [fairtracks.schema.json\*](../json/schema/fairtracks.schema.json "open original schema") |

## uberon.owl Type

`string` ([Version URL to "Uberon Ontology"](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used-properties-version-url-to-uberon-ontology.md))

## uberon.owl Constraints

**pattern**: the string must match the following regular expression: 

```regexp
^http://purl.obolibrary.org/obo/uberon/releases/[0-9]+-[0-9]+-[0-9]+/uberon.owl$
```

[try pattern](https://regexr.com/?expression=%5Ehttp%3A%2F%2Fpurl.obolibrary.org%2Fobo%2Fuberon%2Freleases%2F%5B0-9%5D%2B-%5B0-9%5D%2B-%5B0-9%5D%2B%2Fuberon.owl%24 "try regular expression with regexr.com")

**URI**: the string must be a URI, according to [RFC 3986](https://tools.ietf.org/html/rfc4291 "check the specification")

## uberon.owl Examples

```json
"http://purl.obolibrary.org/obo/uberon/releases/2019-06-27/uberon.owl"
```
