# Experimental Technique Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/technique
```

Main technique used in experiment (e.g., laboratory, computational or statistical technique)


| Abstract            | Extensible | Status         | Identifiable | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                                                     |
| :------------------ | ---------- | -------------- | ------------ | :---------------- | --------------------- | ------------------- | -------------------------------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | No           | Forbidden         | Allowed               | none                | [fairtracks_experiment.schema.json\*](../json/schema/fairtracks_experiment.schema.json "open original schema") |

## technique Type

`object` ([Experimental Technique](fairtracks_experiment-properties-experimental-technique.md))

# Experimental Technique Properties

| Property                  | Type     | Required | Nullable       | Defined by                                                                                                                                                                                                                                                                  |
| :------------------------ | -------- | -------- | -------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [term_id](#term_id)       | `string` | Required | cannot be null | [Experiment](fairtracks_experiment-properties-experimental-technique-properties-term-id.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/technique/properties/term_id")       |
| [term_label](#term_label) | `string` | Optional | cannot be null | [Experiment](fairtracks_experiment-properties-experimental-technique-properties-term-label.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/technique/properties/term_label") |

## term_id

URL linking to an ontology term


`term_id`

-   is required
-   Type: `string` ([Term ID](fairtracks_experiment-properties-experimental-technique-properties-term-id.md))
-   cannot be null
-   defined in: [Experiment](fairtracks_experiment-properties-experimental-technique-properties-term-id.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/technique/properties/term_id")
-   format: "term"
-   ontology: \["http://purl.obolibrary.org/obo/obi.owl","http://edamontology.org/EDAM.owl"]
-   ancestors: \["http://purl.obolibrary.org/obo/OBI_0000011","http://edamontology.org/operation_0004"]
-   matchType: "exact"

### term_id Type

`string` ([Term ID](fairtracks_experiment-properties-experimental-technique-properties-term-id.md))

### term_id Constraints

**pattern**: the string must match the following regular expression: 

```regexp
^(https?|ftp)://
```

[try pattern](https://regexr.com/?expression=%5E(https%3F%7Cftp)%3A%2F%2F "try regular expression with regexr.com")

**unknown format**: the value of this string must follow the format: `term`

### term_id Examples

```json
"http://purl.obolibrary.org/obo/OBI_0002017"
```

## term_label

Exact value according to the ontology used


`term_label`

-   is optional
-   Type: `string` ([Term Label](fairtracks_experiment-properties-experimental-technique-properties-term-label.md))
-   cannot be null
-   defined in: [Experiment](fairtracks_experiment-properties-experimental-technique-properties-term-label.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/technique/properties/term_label")
-   augmented: true

### term_label Type

`string` ([Term Label](fairtracks_experiment-properties-experimental-technique-properties-term-label.md))

### term_label Examples

```json
"histone modification identification by ChIP-Seq assay"
```
