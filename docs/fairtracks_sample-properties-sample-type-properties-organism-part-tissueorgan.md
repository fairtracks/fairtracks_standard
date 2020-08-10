# Organism Part (Tissue/Organ) Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type/properties/organism_part
```

Part of organism (typically tissue or organ) from which the sample was taken, or cell line was derived from. This property  must be used is biospecimen_class is set to "Organism Part", but can also be used for the other values of biospecimen_class.


| Abstract            | Extensible | Status         | Identifiable | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                                             |
| :------------------ | ---------- | -------------- | ------------ | :---------------- | --------------------- | ------------------- | ------------------------------------------------------------------------------------------------------ |
| Can be instantiated | No         | Unknown status | No           | Forbidden         | Allowed               | none                | [fairtracks_sample.schema.json\*](../json/schema/fairtracks_sample.schema.json "open original schema") |

## organism_part Type

`object` ([Organism Part (Tissue/Organ)](fairtracks_sample-properties-sample-type-properties-organism-part-tissueorgan.md))

# Organism Part (Tissue/Organ) Properties

| Property                  | Type     | Required | Nullable       | Defined by                                                                                                                                                                                                                                                                                                           |
| :------------------------ | -------- | -------- | -------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [term_id](#term_id)       | `string` | Required | cannot be null | [Sample](fairtracks_sample-properties-sample-type-properties-organism-part-tissueorgan-properties-term-id.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type/properties/organism_part/properties/term_id")       |
| [term_label](#term_label) | `string` | Optional | cannot be null | [Sample](fairtracks_sample-properties-sample-type-properties-organism-part-tissueorgan-properties-term-label.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type/properties/organism_part/properties/term_label") |

## term_id

URL linking to an ontology term


`term_id`

-   is required
-   Type: `string` ([Term ID](fairtracks_sample-properties-sample-type-properties-organism-part-tissueorgan-properties-term-id.md))
-   cannot be null
-   defined in: [Sample](fairtracks_sample-properties-sample-type-properties-organism-part-tissueorgan-properties-term-id.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type/properties/organism_part/properties/term_id")
-   format: "term"
-   ontology: "http://purl.obolibrary.org/obo/uberon.owl"
-   ancestors: "http://purl.obolibrary.org/obo/UBERON_0000465"
-   matchType: "exact"

### term_id Type

`string` ([Term ID](fairtracks_sample-properties-sample-type-properties-organism-part-tissueorgan-properties-term-id.md))

### term_id Constraints

**pattern**: the string must match the following regular expression: 

```regexp
^(https?|ftp)://
```

[try pattern](https://regexr.com/?expression=%5E(https%3F%7Cftp)%3A%2F%2F "try regular expression with regexr.com")

**unknown format**: the value of this string must follow the format: `term`

### term_id Examples

```json
"http://purl.obolibrary.org/obo/UBERON_0000926"
```

```json
"http://purl.obolibrary.org/obo/UBERON_0000926"
```

## term_label

Exact value according to the ontology used


`term_label`

-   is optional
-   Type: `string` ([Term Label](fairtracks_sample-properties-sample-type-properties-organism-part-tissueorgan-properties-term-label.md))
-   cannot be null
-   defined in: [Sample](fairtracks_sample-properties-sample-type-properties-organism-part-tissueorgan-properties-term-label.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type/properties/organism_part/properties/term_label")
-   augmented: true

### term_label Type

`string` ([Term Label](fairtracks_sample-properties-sample-type-properties-organism-part-tissueorgan-properties-term-label.md))

### term_label Examples

```json
"mesoderm"
```

```json
"mesoderm"
```
