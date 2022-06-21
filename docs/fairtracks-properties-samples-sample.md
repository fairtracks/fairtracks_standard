# Sample Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_sample.schema.json#/properties/samples/items
```




> JSON signature: 7bbf6e7a0e0c2cbfe754b2ba3de8e53f93b7eaefd3e4c4cef67b816b4af53f3e
>

| Abstract            | Extensible | Status         | Identifiable | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                               |
| :------------------ | ---------- | -------------- | ------------ | :---------------- | --------------------- | ------------------- | ---------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | No           | Forbidden         | Allowed               | none                | [fairtracks.schema.json\*](../json/schema/fairtracks.schema.json "open original schema") |

## items Type

`object` ([Sample](fairtracks-properties-samples-sample.md))

all of

-   [Untitled undefined type in Sample](fairtracks_sample-allof-0.md "check type definition")
-   [Untitled undefined type in Sample](fairtracks_sample-allof-1.md "check type definition")
-   [Untitled undefined type in Sample](fairtracks_sample-allof-2.md "check type definition")
-   [Untitled undefined type in Sample](fairtracks_sample-allof-3.md "check type definition")

# Sample Properties

| Property                                | Type     | Required | Nullable       | Defined by                                                                                                                                                                                                                                 |
| :-------------------------------------- | -------- | -------- | -------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [@schema](#@schema)                     | `string` | Optional | cannot be null | [Sample](fairtracks_sample-properties-version-url.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_sample.schema.json#/properties/@schema")                                     |
| [global_id](#global_id)                 | `string` | Optional | cannot be null | [Sample](fairtracks_sample-properties-global-id.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_sample.schema.json#/properties/global_id")                                     |
| [local_id](#local_id)                   | `string` | Required | cannot be null | [Sample](fairtracks_sample-properties-local-id.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_sample.schema.json#/properties/local_id")                                       |
| [species_id](#species_id)               | `string` | Required | cannot be null | [Sample](fairtracks_sample-properties-species-id.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_sample.schema.json#/properties/species_id")                                   |
| [species_name](#species_name)           | `string` | Optional | cannot be null | [Sample](fairtracks_sample-properties-species-name.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_sample.schema.json#/properties/species_name")                               |
| [biospecimen_class](#biospecimen_class) | `object` | Required | cannot be null | [Sample](fairtracks_sample-properties-biospecimen-class.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_sample.schema.json#/properties/biospecimen_class")                     |
| [sample_type](#sample_type)             | `object` | Required | cannot be null | [Sample](fairtracks_sample-properties-sample-type.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type")                                 |
| [phenotype](#phenotype)                 | `object` | Required | cannot be null | [Sample](fairtracks_experiment-properties-experiment-target-properties-phenotype.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_phenotype.schema.json#/properties/phenotype") |
| Additional Properties                   | Any      | Optional | can be null    |                                                                                                                                                                                                                                            |

## @schema

The absolute URL of the 'current' version of the relevant FAIRtracks JSON schema within the same major version as the JSON document follows (which should ensure compatibility). Must match the value of '$id' in the linked schema


`@schema`

-   is optional
-   Type: `string` ([Version URL](fairtracks_sample-properties-version-url.md))
-   cannot be null
-   defined in: [Sample](fairtracks_sample-properties-version-url.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_sample.schema.json#/properties/@schema")
-   format: "uri"

### @schema Type

`string` ([Version URL](fairtracks_sample-properties-version-url.md))

### @schema Constraints

**constant**: the value of this property must be equal to:

```json
"https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_sample.schema.json"
```

**pattern**: the string must match the following regular expression: 

```regexp
^(https?|ftp)://
```

[try pattern](https://regexr.com/?expression=%5E(https%3F%7Cftp)%3A%2F%2F "try regular expression with regexr.com")

**URI**: the string must be a URI, according to [RFC 3986](https://tools.ietf.org/html/rfc4291 "check the specification")

## global_id

Global sample identifier, resolvable by identifiers.org


`global_id`

-   is optional
-   Type: `string` ([Global ID](fairtracks_sample-properties-global-id.md))
-   cannot be null
-   defined in: [Sample](fairtracks_sample-properties-global-id.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_sample.schema.json#/properties/global_id")
-   format: "curie"
-   namespace: "biosample"
-   matchType: "canonical"

### global_id Type

`string` ([Global ID](fairtracks_sample-properties-global-id.md))

### global_id Constraints

**unknown format**: the value of this string must follow the format: `curie`

### global_id Examples

```json
"biosample:SAMN01731491"
```

```json
"biosample:SAMN01731491"
```

## local_id

Submitter-local identifier (within investigation/hub) for sample (in CURIE-format, if applicable)


`local_id`

-   is required
-   Type: `string` ([Local ID](fairtracks_sample-properties-local-id.md))
-   cannot be null
-   defined in: [Sample](fairtracks_sample-properties-local-id.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_sample.schema.json#/properties/local_id")
-   unique: true

### local_id Type

`string` ([Local ID](fairtracks_sample-properties-local-id.md))

### local_id Examples

```json
"encode:ENCBS192PUU"
```

```json
"encode:ENCBS967QBI"
```

## species_id

Species identifier, resolvable by identifiers.org


`species_id`

-   is required
-   Type: `string` ([Species ID](fairtracks_sample-properties-species-id.md))
-   cannot be null
-   defined in: [Sample](fairtracks_sample-properties-species-id.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_sample.schema.json#/properties/species_id")
-   format: "curie"
-   namespace: "taxonomy"
-   matchType: "canonical"

### species_id Type

`string` ([Species ID](fairtracks_sample-properties-species-id.md))

### species_id Constraints

**unknown format**: the value of this string must follow the format: `curie`

### species_id Examples

```json
"taxonomy:9606"
```

```json
"taxonomy:9606"
```

## species_name

Species name according to the NCBI Taxonomy database (<https://www.ncbi.nlm.nih.gov/taxonomy>)


`species_name`

-   is optional
-   Type: `string` ([Species Name](fairtracks_sample-properties-species-name.md))
-   cannot be null
-   defined in: [Sample](fairtracks_sample-properties-species-name.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_sample.schema.json#/properties/species_name")
-   augmented: true

### species_name Type

`string` ([Species Name](fairtracks_sample-properties-species-name.md))

### species_name Examples

```json
"Homo sapiens"
```

```json
"Homo sapiens"
```

## biospecimen_class

Main type of structural unit to be used for classification of the sample


`biospecimen_class`

-   is required
-   Type: `object` ([Biospecimen Class](fairtracks_sample-properties-biospecimen-class.md))
-   cannot be null
-   defined in: [Sample](fairtracks_sample-properties-biospecimen-class.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_sample.schema.json#/properties/biospecimen_class")

### biospecimen_class Type

`object` ([Biospecimen Class](fairtracks_sample-properties-biospecimen-class.md))

## sample_type

Main classification of the sample


`sample_type`

-   is required
-   Type: `object` ([Sample Type](fairtracks_sample-properties-sample-type.md))
-   cannot be null
-   defined in: [Sample](fairtracks_sample-properties-sample-type.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_sample.schema.json#/properties/sample_type")

### sample_type Type

`object` ([Sample Type](fairtracks_sample-properties-sample-type.md))

## phenotype

Main phenotype (e.g. disease) connected to the sample


> JSON signature: 8b4d633accf030bf22b172f79af1dfbea063d58a28274a129bbc8bc7b7a188f9
>

`phenotype`

-   is required
-   Type: `object` ([Phenotype](fairtracks_experiment-properties-experiment-target-properties-phenotype.md))
-   cannot be null
-   defined in: [Sample](fairtracks_experiment-properties-experiment-target-properties-phenotype.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_phenotype.schema.json#/properties/phenotype")

### phenotype Type

`object` ([Phenotype](fairtracks_experiment-properties-experiment-target-properties-phenotype.md))

## Additional Properties

Additional properties are allowed and do not have to follow a specific schema
