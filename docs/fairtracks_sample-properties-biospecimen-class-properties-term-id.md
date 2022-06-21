# Term ID Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_sample.schema.json#/properties/biospecimen_class/properties/term_id
```

URL linking to an ontology term


| Abstract            | Extensible | Status         | Identifiable            | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                                             |
| :------------------ | ---------- | -------------- | ----------------------- | :---------------- | --------------------- | ------------------- | ------------------------------------------------------------------------------------------------------ |
| Can be instantiated | No         | Unknown status | Unknown identifiability | Forbidden         | Allowed               | none                | [fairtracks_sample.schema.json\*](../json/schema/fairtracks_sample.schema.json "open original schema") |

## term_id Type

`string` ([Term ID](fairtracks_sample-properties-biospecimen-class-properties-term-id.md))

## term_id Constraints

**enum**: the value of this property must be equal to one of the following values:

| Value                                           | Explanation |
| :---------------------------------------------- | ----------- |
| `"http://purl.obolibrary.org/obo/NCIT_C12508"`  |             |
| `"http://purl.obolibrary.org/obo/NCIT_C12913"`  |             |
| `"http://purl.obolibrary.org/obo/NCIT_C16403"`  |             |
| `"http://purl.obolibrary.org/obo/NCIT_C103199"` |             |

**pattern**: the string must match the following regular expression: 

```regexp
^(https?|ftp)://
```

[try pattern](https://regexr.com/?expression=%5E(https%3F%7Cftp)%3A%2F%2F "try regular expression with regexr.com")

**unknown format**: the value of this string must follow the format: `term`

## term_id Examples

```json
"http://purl.obolibrary.org/obo/NCIT_C12508"
```

```json
"http://purl.obolibrary.org/obo/NCIT_C12508"
```
