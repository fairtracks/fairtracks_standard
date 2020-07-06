# Phenotype Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_phenotype.schema.json
```




> JSON signature: f807ce206cb0c89510c5708a328ddc4f2b1427352585a6aa87f68b73756a3e61
>

| Abstract            | Extensible | Status         | Identifiable | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                                                 |
| :------------------ | ---------- | -------------- | ------------ | :---------------- | --------------------- | ------------------- | ---------------------------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | No           | Forbidden         | Allowed               | none                | [fairtracks_phenotype.schema.json](../json/schema/fairtracks_phenotype.schema.json "open original schema") |

## Phenotype Type

`object` ([Phenotype](fairtracks_phenotype.md))

# Phenotype Properties

| Property                  | Type     | Required | Nullable       | Defined by                                                                                                                                                                                                        |
| :------------------------ | -------- | -------- | -------------- | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [@schema](#@schema)       | `string` | Optional | cannot be null | [Phenotype](fairtracks_phenotype-properties-schema-url.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_phenotype.schema.json#/properties/@schema")    |
| [term_id](#term_id)       | `string` | Required | cannot be null | [Phenotype](fairtracks_phenotype-properties-term-id.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_phenotype.schema.json#/properties/term_id")       |
| [term_label](#term_label) | `string` | Optional | cannot be null | [Phenotype](fairtracks_phenotype-properties-term-label.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_phenotype.schema.json#/properties/term_label") |
| Additional Properties     | Any      | Optional | can be null    |                                                                                                                                                                                                                   |

## @schema

The JSON Schema absolute URL. Used to link JSON data to a JSON schema. Must match the value of '$id' in the linked schema


`@schema`

-   is optional
-   Type: `string` ([Schema URL](fairtracks_phenotype-properties-schema-url.md))
-   cannot be null
-   defined in: [Phenotype](fairtracks_phenotype-properties-schema-url.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_phenotype.schema.json#/properties/@schema")
-   format: "uri"

### @schema Type

`string` ([Schema URL](fairtracks_phenotype-properties-schema-url.md))

### @schema Constraints

**constant**: the value of this property must be equal to:

```json
"https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_phenotype.schema.json"
```

**pattern**: the string must match the following regular expression: 

```regexp
^(https?|ftp)://
```

[try pattern](https://regexr.com/?expression=%5E(https%3F%7Cftp)%3A%2F%2F "try regular expression with regexr.com")

**URI**: the string must be a URI, according to [RFC 3986](https://tools.ietf.org/html/rfc4291 "check the specification")

## term_id

URL linking to an ontology term


`term_id`

-   is required
-   Type: `string` ([Term ID](fairtracks_phenotype-properties-term-id.md))
-   cannot be null
-   defined in: [Phenotype](fairtracks_phenotype-properties-term-id.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_phenotype.schema.json#/properties/term_id")
-   format: "term"
-   ontology: "http://purl.obolibrary.org/obo/ncit.owl"
-   ancestors: \["http://purl.obolibrary.org/obo/NCIT_C7057","http://purl.obolibrary.org/obo/NCIT_C22187","http://purl.obolibrary.org/obo/NCIT_C14165"]
-   matchType: "exact"

### term_id Type

`string` ([Term ID](fairtracks_phenotype-properties-term-id.md))

### term_id Constraints

**pattern**: the string must match the following regular expression: 

```regexp
^(https?|ftp)://
```

[try pattern](https://regexr.com/?expression=%5E(https%3F%7Cftp)%3A%2F%2F "try regular expression with regexr.com")

**unknown format**: the value of this string must follow the format: `term`

### term_id Default Value

The default value is:

```json
"http://purl.obolibrary.org/obo/NCIT_C14165"
```

## term_label

Exact value according to the ontology used


`term_label`

-   is optional
-   Type: `string` ([Term Label](fairtracks_phenotype-properties-term-label.md))
-   cannot be null
-   defined in: [Phenotype](fairtracks_phenotype-properties-term-label.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_phenotype.schema.json#/properties/term_label")
-   autogenerated: true

### term_label Type

`string` ([Term Label](fairtracks_phenotype-properties-term-label.md))

### term_label Default Value

The default value is:

```json
"Normal"
```

## Additional Properties

Additional properties are allowed and do not have to follow a specific schema
