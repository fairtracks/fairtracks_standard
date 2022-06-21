# Cell Type (Abnormal) Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type/properties/abnormal_cell_type
```

Cell type of isolated abnormal cells in the sample. This property should only be used if biospecimen_class is set to "Abnormal Cell".


| Abstract            | Extensible | Status         | Identifiable | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                                             |
| :------------------ | ---------- | -------------- | ------------ | :---------------- | --------------------- | ------------------- | ------------------------------------------------------------------------------------------------------ |
| Can be instantiated | No         | Unknown status | No           | Forbidden         | Allowed               | none                | [fairtracks_sample.schema.json\*](../json/schema/fairtracks_sample.schema.json "open original schema") |

## abnormal_cell_type Type

`object` ([Cell Type (Abnormal)](fairtracks_sample-properties-sample-type-properties-cell-type-abnormal.md))

# Cell Type (Abnormal) Properties

| Property                  | Type     | Required | Nullable       | Defined by                                                                                                                                                                                                                                                                                                         |
| :------------------------ | -------- | -------- | -------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [term_id](#term_id)       | `string` | Required | cannot be null | [Sample](fairtracks_sample-properties-sample-type-properties-cell-type-abnormal-properties-term-id.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type/properties/abnormal_cell_type/properties/term_id")       |
| [term_label](#term_label) | `string` | Optional | cannot be null | [Sample](fairtracks_sample-properties-sample-type-properties-cell-type-abnormal-properties-term-label.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type/properties/abnormal_cell_type/properties/term_label") |

## term_id

URL linking to an ontology term


`term_id`

-   is required
-   Type: `string` ([Term ID](fairtracks_sample-properties-sample-type-properties-cell-type-abnormal-properties-term-id.md))
-   cannot be null
-   defined in: [Sample](fairtracks_sample-properties-sample-type-properties-cell-type-abnormal-properties-term-id.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type/properties/abnormal_cell_type/properties/term_id")
-   format: "term"
-   ontology: "http://purl.obolibrary.org/obo/ncit.owl"
-   ancestors: "http://purl.obolibrary.org/obo/NCIT_C12913"
-   matchType: "exact"

### term_id Type

`string` ([Term ID](fairtracks_sample-properties-sample-type-properties-cell-type-abnormal-properties-term-id.md))

### term_id Constraints

**pattern**: the string must match the following regular expression: 

```regexp
^(https?|ftp)://
```

[try pattern](https://regexr.com/?expression=%5E(https%3F%7Cftp)%3A%2F%2F "try regular expression with regexr.com")

**unknown format**: the value of this string must follow the format: `term`

## term_label

Exact value according to the ontology used


`term_label`

-   is optional
-   Type: `string` ([Term Label](fairtracks_sample-properties-sample-type-properties-cell-type-abnormal-properties-term-label.md))
-   cannot be null
-   defined in: [Sample](fairtracks_sample-properties-sample-type-properties-cell-type-abnormal-properties-term-label.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type/properties/abnormal_cell_type/properties/term_label")
-   augmented: true

### term_label Type

`string` ([Term Label](fairtracks_sample-properties-sample-type-properties-cell-type-abnormal-properties-term-label.md))
