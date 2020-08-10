# Sample Reference Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/sample_ref
```

Reference to the sample of the experiment (using the submitter-local identifier of the sample)


| Abstract            | Extensible | Status         | Identifiable            | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                                                     |
| :------------------ | ---------- | -------------- | ----------------------- | :---------------- | --------------------- | ------------------- | -------------------------------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | Unknown identifiability | Forbidden         | Allowed               | none                | [fairtracks_experiment.schema.json\*](../json/schema/fairtracks_experiment.schema.json "open original schema") |

## sample_ref Type

`string` ([Sample Reference](fairtracks_experiment-properties-sample-reference.md))

## sample_ref Constraints

**unknown format**: the value of this string must follow the format: `foreign_ref`

## sample_ref Examples

```json
"encode:ENCBS192PUU"
```
