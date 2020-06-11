# Untitled object in Sample Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type
```

The type of the sample


| Abstract            | Extensible | Status         | Identifiable | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                                             |
| :------------------ | ---------- | -------------- | ------------ | :---------------- | --------------------- | ------------------- | ------------------------------------------------------------------------------------------------------ |
| Can be instantiated | No         | Unknown status | No           | Forbidden         | Allowed               | none                | [fairtracks_sample.schema.json\*](../json/schema/fairtracks_sample.schema.json "open original schema") |

## sample_type Type

`object` ([Details](fairtracks_sample-properties-sample_type.md))

# undefined Properties

| Property                                  | Type     | Required | Nullable       | Defined by                                                                                                                                                                                                                                                             |
| :---------------------------------------- | -------- | -------- | -------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [cell_type](#cell_type)                   | `object` | Optional | cannot be null | [Sample](fairtracks_sample-properties-sample_type-properties-cell_type.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type/properties/cell_type")                   |
| [abnormal_cell_type](#abnormal_cell_type) | `object` | Optional | cannot be null | [Sample](fairtracks_sample-properties-sample_type-properties-abnormal_cell_type.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type/properties/abnormal_cell_type") |
| [cell_line](#cell_line)                   | `object` | Optional | cannot be null | [Sample](fairtracks_sample-properties-sample_type-properties-cell_line.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type/properties/cell_line")                   |
| [organism_part](#organism_part)           | `object` | Optional | cannot be null | [Sample](fairtracks_sample-properties-sample_type-properties-organism_part.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type/properties/organism_part")           |
| [summary](#summary)                       | `string` | Optional | cannot be null | [Sample](fairtracks_sample-properties-sample_type-properties-summary.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type/properties/summary")                       |

## cell_type

Cell type of isolated normal cells in the sample. This property should only be used if biospecimen_class is set to "Cell".


`cell_type`

-   is optional
-   Type: `object` ([Details](fairtracks_sample-properties-sample_type-properties-cell_type.md))
-   cannot be null
-   defined in: [Sample](fairtracks_sample-properties-sample_type-properties-cell_type.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type/properties/cell_type")

### cell_type Type

`object` ([Details](fairtracks_sample-properties-sample_type-properties-cell_type.md))

## abnormal_cell_type

Cell type of isolated abnormal cells in the sample. This property should only be used if biospecimen_class is set to "Abnormal Cell".


`abnormal_cell_type`

-   is optional
-   Type: `object` ([Details](fairtracks_sample-properties-sample_type-properties-abnormal_cell_type.md))
-   cannot be null
-   defined in: [Sample](fairtracks_sample-properties-sample_type-properties-abnormal_cell_type.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type/properties/abnormal_cell_type")

### abnormal_cell_type Type

`object` ([Details](fairtracks_sample-properties-sample_type-properties-abnormal_cell_type.md))

## cell_line

Cultured cell line used in the sample. This property should only be used if biospecimen_class is set to "Cell Line".


`cell_line`

-   is optional
-   Type: `object` ([Details](fairtracks_sample-properties-sample_type-properties-cell_line.md))
-   cannot be null
-   defined in: [Sample](fairtracks_sample-properties-sample_type-properties-cell_line.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type/properties/cell_line")

### cell_line Type

`object` ([Details](fairtracks_sample-properties-sample_type-properties-cell_line.md))

## organism_part

Part of organism (typically tissue or organ) from which the sample was taken, or cell line was derived from. This property  must be used is biospecimen_class is set to "Organism Part", but can also be used for the other values of biospecimen_class.


`organism_part`

-   is optional
-   Type: `object` ([Details](fairtracks_sample-properties-sample_type-properties-organism_part.md))
-   cannot be null
-   defined in: [Sample](fairtracks_sample-properties-sample_type-properties-organism_part.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type/properties/organism_part")

### organism_part Type

`object` ([Details](fairtracks_sample-properties-sample_type-properties-organism_part.md))

## summary

Summary of 'sample_type', copied from 'cell_type', 'abnormal_cell_type', 'cell_line', or 'organism_part', according to 'biospecimen_class'


`summary`

-   is optional
-   Type: `string`
-   cannot be null
-   defined in: [Sample](fairtracks_sample-properties-sample_type-properties-summary.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type/properties/summary")

### summary Type

`string`

### summary Examples

```json
"H1-hESC"
```
