# Term ID Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type/properties/organism_part/properties/term_id
```

URL linking to an ontology term


| Abstract            | Extensible | Status         | Identifiable            | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                                             |
| :------------------ | ---------- | -------------- | ----------------------- | :---------------- | --------------------- | ------------------- | ------------------------------------------------------------------------------------------------------ |
| Can be instantiated | No         | Unknown status | Unknown identifiability | Forbidden         | Allowed               | none                | [fairtracks_sample.schema.json\*](../json/schema/fairtracks_sample.schema.json "open original schema") |

## term_id Type

`string` ([Term ID](fairtracks_sample-properties-sample-type-properties-organism-part-tissueorgan-properties-term-id.md))

## term_id Constraints

**pattern**: the string must match the following regular expression: 

```regexp
^(https?|ftp)://
```

[try pattern](https://regexr.com/?expression=%5E(https%3F%7Cftp)%3A%2F%2F "try regular expression with regexr.com")

**unknown format**: the value of this string must follow the format: `term`

## term_id Examples

```json
"http://purl.obolibrary.org/obo/UBERON_0000926"
```

```json
"http://purl.obolibrary.org/obo/UBERON_0000926"
```
