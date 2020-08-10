# Sample Type Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type
```

Main classification of the sample


| Abstract            | Extensible | Status         | Identifiable | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                                             |
| :------------------ | ---------- | -------------- | ------------ | :---------------- | --------------------- | ------------------- | ------------------------------------------------------------------------------------------------------ |
| Can be instantiated | No         | Unknown status | No           | Forbidden         | Allowed               | none                | [fairtracks_sample.schema.json\*](../json/schema/fairtracks_sample.schema.json "open original schema") |

## sample_type Type

`object` ([Sample Type](fairtracks_sample-properties-sample-type.md))

# Sample Type Properties

| Property                                  | Type     | Required | Nullable       | Defined by                                                                                                                                                                                                                                                               |
| :---------------------------------------- | -------- | -------- | -------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [cell_type](#cell_type)                   | `object` | Optional | cannot be null | [Sample](fairtracks_sample-properties-sample-type-properties-cell-type-normal.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type/properties/cell_type")              |
| [abnormal_cell_type](#abnormal_cell_type) | `object` | Optional | cannot be null | [Sample](fairtracks_sample-properties-sample-type-properties-cell-type-abnormal.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type/properties/abnormal_cell_type")   |
| [cell_line](#cell_line)                   | `object` | Optional | cannot be null | [Sample](fairtracks_sample-properties-sample-type-properties-cell-line.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type/properties/cell_line")                     |
| [organism_part](#organism_part)           | `object` | Optional | cannot be null | [Sample](fairtracks_sample-properties-sample-type-properties-organism-part-tissueorgan.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type/properties/organism_part") |
| [details](#details)                       | `string` | Optional | cannot be null | [Sample](fairtracks_sample-properties-sample-type-properties-sample-type-details.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type/properties/details")             |
| [summary](#summary)                       | `string` | Optional | cannot be null | [Sample](fairtracks_sample-properties-sample-type-properties-sample-type-summary.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type/properties/summary")             |

## cell_type

Cell type of isolated normal cells in the sample. This property should only be used if biospecimen_class is set to "Cell".


`cell_type`

-   is optional
-   Type: `object` ([Cell Type (Normal)](fairtracks_sample-properties-sample-type-properties-cell-type-normal.md))
-   cannot be null
-   defined in: [Sample](fairtracks_sample-properties-sample-type-properties-cell-type-normal.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type/properties/cell_type")

### cell_type Type

`object` ([Cell Type (Normal)](fairtracks_sample-properties-sample-type-properties-cell-type-normal.md))

## abnormal_cell_type

Cell type of isolated abnormal cells in the sample. This property should only be used if biospecimen_class is set to "Abnormal Cell".


`abnormal_cell_type`

-   is optional
-   Type: `object` ([Cell Type (Abnormal)](fairtracks_sample-properties-sample-type-properties-cell-type-abnormal.md))
-   cannot be null
-   defined in: [Sample](fairtracks_sample-properties-sample-type-properties-cell-type-abnormal.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type/properties/abnormal_cell_type")

### abnormal_cell_type Type

`object` ([Cell Type (Abnormal)](fairtracks_sample-properties-sample-type-properties-cell-type-abnormal.md))

## cell_line

Cultured cell line used in the sample. This property should only be used if biospecimen_class is set to "Cell Line".


`cell_line`

-   is optional
-   Type: `object` ([Cell Line](fairtracks_sample-properties-sample-type-properties-cell-line.md))
-   cannot be null
-   defined in: [Sample](fairtracks_sample-properties-sample-type-properties-cell-line.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type/properties/cell_line")

### cell_line Type

`object` ([Cell Line](fairtracks_sample-properties-sample-type-properties-cell-line.md))

## organism_part

Part of organism (typically tissue or organ) from which the sample was taken, or cell line was derived from. This property  must be used is biospecimen_class is set to "Organism Part", but can also be used for the other values of biospecimen_class.


`organism_part`

-   is optional
-   Type: `object` ([Organism Part (Tissue/Organ)](fairtracks_sample-properties-sample-type-properties-organism-part-tissueorgan.md))
-   cannot be null
-   defined in: [Sample](fairtracks_sample-properties-sample-type-properties-organism-part-tissueorgan.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type/properties/organism_part")

### organism_part Type

`object` ([Organism Part (Tissue/Organ)](fairtracks_sample-properties-sample-type-properties-organism-part-tissueorgan.md))

## details

Important details about the sample classification (to be included in the 'sample_type/summary' property)


`details`

-   is optional
-   Type: `string` ([Sample Type Details](fairtracks_sample-properties-sample-type-properties-sample-type-details.md))
-   cannot be null
-   defined in: [Sample](fairtracks_sample-properties-sample-type-properties-sample-type-details.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type/properties/details")

### details Type

`string` ([Sample Type Details](fairtracks_sample-properties-sample-type-properties-sample-type-details.md))

### details Examples

```json
"CD20+"
```

```json
"CD20+"
```

## summary

Main classification of the sample. Summary of 'sample_type' sub-properties: 'cell_type', 'abnormal_cell_type', 'cell_line', or 'organism_part' (and adding 'details'), according to 'biospecimen_class'


`summary`

-   is optional
-   Type: `string` ([Sample Type (Summary)](fairtracks_sample-properties-sample-type-properties-sample-type-summary.md))
-   cannot be null
-   defined in: [Sample](fairtracks_sample-properties-sample-type-properties-sample-type-summary.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type/properties/summary")
-   augmented: true

### summary Type

`string` ([Sample Type (Summary)](fairtracks_sample-properties-sample-type-properties-sample-type-summary.md))

### summary Examples

```json
"B cell (mesoderm, CD20+)"
```

```json
"B cell (mesoderm, CD20+)"
```
