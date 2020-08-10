# Study Reference Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/study_ref
```

Reference to the study that generated the sample (using the submitter-local identifier of the study)


| Abstract            | Extensible | Status         | Identifiable            | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                                                     |
| :------------------ | ---------- | -------------- | ----------------------- | :---------------- | --------------------- | ------------------- | -------------------------------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | Unknown identifiability | Forbidden         | Allowed               | none                | [fairtracks_experiment.schema.json\*](../json/schema/fairtracks_experiment.schema.json "open original schema") |

## study_ref Type

`string` ([Study Reference](fairtracks_experiment-properties-study-reference.md))

## study_ref Constraints

**unknown format**: the value of this string must follow the format: `foreign_ref`

## study_ref Examples

```json
"U54HG004592"
```
