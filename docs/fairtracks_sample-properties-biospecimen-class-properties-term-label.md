# Term Label Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_sample.schema.json#/properties/biospecimen_class/properties/term_label
```

Exact value according to the ontology used


| Abstract            | Extensible | Status         | Identifiable            | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                                             |
| :------------------ | ---------- | -------------- | ----------------------- | :---------------- | --------------------- | ------------------- | ------------------------------------------------------------------------------------------------------ |
| Can be instantiated | No         | Unknown status | Unknown identifiability | Forbidden         | Allowed               | none                | [fairtracks_sample.schema.json\*](../json/schema/fairtracks_sample.schema.json "open original schema") |

## term_label Type

`string` ([Term Label](fairtracks_sample-properties-biospecimen-class-properties-term-label.md))

## term_label Constraints

**enum**: the value of this property must be equal to one of the following values:

| Value             | Explanation |
| :---------------- | ----------- |
| `"Cell"`          |             |
| `"Abnormal Cell"` |             |
| `"Cell Line"`     |             |
| `"Organism Part"` |             |

## term_label Examples

```json
"Cell"
```

```json
"Cell"
```
