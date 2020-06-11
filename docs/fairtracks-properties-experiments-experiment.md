# Experiment Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/experiments/items
```




> JSON signature: f75ed466496ca775de41091058a54316c484067bfc3478dc3f3b1e68b17a399e
>

| Abstract            | Extensible | Status         | Identifiable | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                               |
| :------------------ | ---------- | -------------- | ------------ | :---------------- | --------------------- | ------------------- | ---------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | No           | Forbidden         | Allowed               | none                | [fairtracks.schema.json\*](../json/schema/fairtracks.schema.json "open original schema") |

## items Type

`object` ([Experiment](fairtracks-properties-experiments-experiment.md))

any of

-   [Untitled undefined type in Experiment](fairtracks_experiment-anyof-0.md "check type definition")
-   [Untitled undefined type in Experiment](fairtracks_experiment-anyof-1.md "check type definition")

# Experiment Properties

| Property                                                      | Type     | Required | Nullable       | Defined by                                                                                                                                                                                                                                               |
| :------------------------------------------------------------ | -------- | -------- | -------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [@schema](#@schema)                                           | `string` | Optional | cannot be null | [Experiment](fairtracks_experiment-properties-schema.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/@schema")                                            |
| [global_id](#global_id)                                       | `string` | Optional | cannot be null | [Experiment](fairtracks_experiment-properties-global_id.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/global_id")                                       |
| [local_id](#local_id)                                         | `string` | Required | cannot be null | [Experiment](fairtracks_experiment-properties-local_id.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/local_id")                                         |
| [study_ref](#study_ref)                                       | `string` | Required | cannot be null | [Experiment](fairtracks_experiment-properties-study_ref.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/study_ref")                                       |
| [sample_ref](#sample_ref)                                     | `string` | Optional | cannot be null | [Experiment](fairtracks_experiment-properties-sample_ref.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/sample_ref")                                     |
| [aggregated_from](#aggregated_from)                           | `array`  | Optional | cannot be null | [Experiment](fairtracks_experiment-properties-aggregated_from.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/aggregated_from")                           |
| [technique](#technique)                                       | `object` | Required | cannot be null | [Experiment](fairtracks_experiment-properties-technique.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/technique")                                       |
| [target](#target)                                             | `object` | Required | cannot be null | [Experiment](fairtracks_experiment-properties-target.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/target")                                             |
| [lab_protocol_description](#lab_protocol_description)         | `string` | Optional | cannot be null | [Experiment](fairtracks_experiment-properties-lab_protocol_description.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/lab_protocol_description")         |
| [compute_protocol_description](#compute_protocol_description) | `string` | Optional | cannot be null | [Experiment](fairtracks_experiment-properties-compute_protocol_description.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/compute_protocol_description") |
| Additional Properties                                         | Any      | Optional | can be null    |                                                                                                                                                                                                                                                          |

## @schema

The JSON Schema absolute URL. Used to link JSON data to a JSON schema. Must match the value of '$id' in the linked schema


`@schema`

-   is optional
-   Type: `string`
-   cannot be null
-   defined in: [Experiment](fairtracks_experiment-properties-schema.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/@schema")

### @schema Type

`string`

### @schema Constraints

**constant**: the value of this property must be equal to:

```json
"https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json"
```

**pattern**: the string must match the following regular expression: 

```regexp
^(https?|ftp)://
```

[try pattern](https://regexr.com/?expression=%5E(https%3F%7Cftp)%3A%2F%2F "try regular expression with regexr.com")

**URI**: the string must be a URI, according to [RFC 3986](https://tools.ietf.org/html/rfc4291 "check the specification")

## global_id

Global experiment identifier, resolvable by identifiers.org


`global_id`

-   is optional
-   Type: `string`
-   cannot be null
-   defined in: [Experiment](fairtracks_experiment-properties-global_id.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/global_id")

### global_id Type

`string`

### global_id Constraints

**unknown format**: the value of this string must follow the format: `curie`

### global_id Examples

```json
"geo:GSE35583"
```

## local_id

Submitter-local identifier (within investigation/hub) for experiment (in CURIE-format, if applicable)


`local_id`

-   is required
-   Type: `string`
-   cannot be null
-   defined in: [Experiment](fairtracks_experiment-properties-local_id.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/local_id")

### local_id Type

`string`

### local_id Examples

```json
"encode:ENCSR000DQP"
```

## study_ref

Reference to the study that generated the sample (using the submitter-local identifier of the study)


`study_ref`

-   is required
-   Type: `string`
-   cannot be null
-   defined in: [Experiment](fairtracks_experiment-properties-study_ref.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/study_ref")

### study_ref Type

`string`

### study_ref Constraints

**unknown format**: the value of this string must follow the format: `foreign_ref`

### study_ref Examples

```json
"UW_ChipSeq"
```

## sample_ref

Reference to the sample of the experiment (using the submitter-local identifier of the sample)


`sample_ref`

-   is optional
-   Type: `string`
-   cannot be null
-   defined in: [Experiment](fairtracks_experiment-properties-sample_ref.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/sample_ref")

### sample_ref Type

`string`

### sample_ref Constraints

**unknown format**: the value of this string must follow the format: `foreign_ref`

### sample_ref Examples

```json
"geo:GSM945229"
```

## aggregated_from

References to external experiments used as basis for aggregated data generation (using global experiment identifiers, resolvable by identifiers.org)


`aggregated_from`

-   is optional
-   Type: `string[]`
-   cannot be null
-   defined in: [Experiment](fairtracks_experiment-properties-aggregated_from.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/aggregated_from")

### aggregated_from Type

`string[]`

## technique

Main technique used in experiment (e.g., laboratory, computational or statistical technique)


`technique`

-   is required
-   Type: `object` ([Details](fairtracks_experiment-properties-technique.md))
-   cannot be null
-   defined in: [Experiment](fairtracks_experiment-properties-technique.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/technique")

### technique Type

`object` ([Details](fairtracks_experiment-properties-technique.md))

## target

Main target of the experiment


`target`

-   is required
-   Type: `object` ([Details](fairtracks_experiment-properties-target.md))
-   cannot be null
-   defined in: [Experiment](fairtracks_experiment-properties-target.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/target")

### target Type

`object` ([Details](fairtracks_experiment-properties-target.md))

## lab_protocol_description

Free-text description of lab protocol, or URL to such description


`lab_protocol_description`

-   is optional
-   Type: `string`
-   cannot be null
-   defined in: [Experiment](fairtracks_experiment-properties-lab_protocol_description.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/lab_protocol_description")

### lab_protocol_description Type

`string`

### lab_protocol_description Examples

```json
"https://www.encodeproject.org/documents/8f459e88-6344-434f-8f9f-6375a9ff1880/@@download/attachment/CD20%2B_Stam_protocol.pdf"
```

## compute_protocol_description

Free-text description of computational protocol, or URL to such description


`compute_protocol_description`

-   is optional
-   Type: `string`
-   cannot be null
-   defined in: [Experiment](fairtracks_experiment-properties-compute_protocol_description.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/compute_protocol_description")

### compute_protocol_description Type

`string`

### compute_protocol_description Examples

```json
"https://www.encodeproject.org/documents/6f6351d4-9310-4a3b-a3c2-70ecac47b28b/@@download/attachment/ChIP-seq_Mapping_Pipeline_Overview.pdf"
```

## Additional Properties

Additional properties are allowed and do not have to follow a specific schema
