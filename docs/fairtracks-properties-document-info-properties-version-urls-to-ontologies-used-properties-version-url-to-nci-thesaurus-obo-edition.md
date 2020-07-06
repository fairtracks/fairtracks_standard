# Version URL to "NCI Thesaurus OBO EDITION" Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions/properties/http://purl.obolibrary.org/obo/ncit.owl
```

URL to the version of "NCI Thesaurus OBO Edition" used in the JSON document


| Abstract            | Extensible | Status         | Identifiable            | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                               |
| :------------------ | ---------- | -------------- | ----------------------- | :---------------- | --------------------- | ------------------- | ---------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | Unknown identifiability | Forbidden         | Allowed               | none                | [fairtracks.schema.json\*](../json/schema/fairtracks.schema.json "open original schema") |

## ncit.owl Type

`string` ([Version URL to "NCI Thesaurus OBO EDITION"](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used-properties-version-url-to-nci-thesaurus-obo-edition.md))

## ncit.owl Constraints

**pattern**: the string must match the following regular expression: 

```regexp
^http://purl.obolibrary.org/obo/ncit/releases/[0-9]+-[0-9]+-[0-9]+/ncit.owl$
```

[try pattern](https://regexr.com/?expression=%5Ehttp%3A%2F%2Fpurl.obolibrary.org%2Fobo%2Fncit%2Freleases%2F%5B0-9%5D%2B-%5B0-9%5D%2B-%5B0-9%5D%2B%2Fncit.owl%24 "try regular expression with regexr.com")

**URI**: the string must be a URI, according to [RFC 3986](https://tools.ietf.org/html/rfc4291 "check the specification")

## ncit.owl Examples

```json
"http://purl.obolibrary.org/obo/ncit/releases/2019-09-09/ncit.owl"
```
