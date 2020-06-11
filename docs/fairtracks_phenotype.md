# Phenotype Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_phenotype.schema.json
```




> JSON signature: c56584aa5716fb0730026a5f92f0d126930895f063049ca751e3aa80df6bd4d8
>

| Abstract            | Extensible | Status         | Identifiable | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                                                 |
| :------------------ | ---------- | -------------- | ------------ | :---------------- | --------------------- | ------------------- | ---------------------------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | No           | Forbidden         | Allowed               | none                | [fairtracks_phenotype.schema.json](../json/schema/fairtracks_phenotype.schema.json "open original schema") |

## Phenotype Type

`object` ([Phenotype](fairtracks_phenotype.md))

# Phenotype Properties

| Property                  | Type     | Required | Nullable       | Defined by                                                                                                                                                                                                        |
| :------------------------ | -------- | -------- | -------------- | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [@schema](#@schema)       | `string` | Optional | cannot be null | [Phenotype](fairtracks_phenotype-properties-schema.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_phenotype.schema.json#/properties/@schema")        |
| [term_id](#term_id)       | `string` | Required | cannot be null | [Phenotype](fairtracks_phenotype-properties-term_id.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_phenotype.schema.json#/properties/term_id")       |
| [term_label](#term_label) | `string` | Optional | cannot be null | [Phenotype](fairtracks_phenotype-properties-term_label.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_phenotype.schema.json#/properties/term_label") |
| Additional Properties     | Any      | Optional | can be null    |                                                                                                                                                                                                                   |

## @schema

The JSON Schema absolute URL. Used to link JSON data to a JSON schema. Must match the value of '$id' in the linked schema


`@schema`

-   is optional
-   Type: `string`
-   cannot be null
-   defined in: [Phenotype](fairtracks_phenotype-properties-schema.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_phenotype.schema.json#/properties/@schema")

### @schema Type

`string`

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
-   Type: `string`
-   cannot be null
-   defined in: [Phenotype](fairtracks_phenotype-properties-term_id.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_phenotype.schema.json#/properties/term_id")

### term_id Type

`string`

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
-   Type: `string`
-   cannot be null
-   defined in: [Phenotype](fairtracks_phenotype-properties-term_label.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_phenotype.schema.json#/properties/term_label")

### term_label Type

`string`

### term_label Default Value

The default value is:

```json
"Normal"
```

## Additional Properties

Additional properties are allowed and do not have to follow a specific schema
