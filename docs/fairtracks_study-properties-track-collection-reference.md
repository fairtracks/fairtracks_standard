# Track Collection Reference Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_study.schema.json#/properties/collection_ref
```

Reference to the track collection containing the study (using the submitter-local identifier of the collection)


| Abstract            | Extensible | Status         | Identifiable            | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                                           |
| :------------------ | ---------- | -------------- | ----------------------- | :---------------- | --------------------- | ------------------- | ---------------------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | Unknown identifiability | Forbidden         | Allowed               | none                | [fairtracks_study.schema.json\*](../json/schema/fairtracks_study.schema.json "open original schema") |

## collection_ref Type

`string` ([Track Collection Reference](fairtracks_study-properties-track-collection-reference.md))

## collection_ref Constraints

**unknown format**: the value of this string must follow the format: `foreign_ref`

## collection_ref Examples

```json
"encode_example"
```
