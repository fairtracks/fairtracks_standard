# Untitled object in Experiment Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/target/properties/gene_product_type
```

Gene product type targeted by the experiment (e.g., miRNA)


| Abstract            | Extensible | Status         | Identifiable | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                                                     |
| :------------------ | ---------- | -------------- | ------------ | :---------------- | --------------------- | ------------------- | -------------------------------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | No           | Forbidden         | Allowed               | none                | [fairtracks_experiment.schema.json\*](../json/schema/fairtracks_experiment.schema.json "open original schema") |

## gene_product_type Type

`object` ([Details](fairtracks_experiment-properties-target-properties-gene_product_type.md))

# undefined Properties

| Property                  | Type     | Required | Nullable       | Defined by                                                                                                                                                                                                                                                                                                         |
| :------------------------ | -------- | -------- | -------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [term_id](#term_id)       | `string` | Required | cannot be null | [Experiment](fairtracks_experiment-properties-target-properties-gene_product_type-properties-term_id.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/target/properties/gene_product_type/properties/term_id")       |
| [term_label](#term_label) | `string` | Optional | cannot be null | [Experiment](fairtracks_experiment-properties-target-properties-gene_product_type-properties-term_label.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/target/properties/gene_product_type/properties/term_label") |

## term_id

URL linking to an ontology term


`term_id`

-   is required
-   Type: `string`
-   cannot be null
-   defined in: [Experiment](fairtracks_experiment-properties-target-properties-gene_product_type-properties-term_id.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/target/properties/gene_product_type/properties/term_id")

### term_id Type

`string`

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
-   Type: `string`
-   cannot be null
-   defined in: [Experiment](fairtracks_experiment-properties-target-properties-gene_product_type-properties-term_label.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/target/properties/gene_product_type/properties/term_label")

### term_label Type

`string`