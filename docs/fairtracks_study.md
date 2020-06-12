# Study Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_study.schema.json
```




> JSON signature: 1961a412d76dc863c8eb6e33d349f4024dcb41c3ed4aaef8d9e199dcfc94f4a8
>

| Abstract            | Extensible | Status         | Identifiable | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                                         |
| :------------------ | ---------- | -------------- | ------------ | :---------------- | --------------------- | ------------------- | -------------------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | No           | Forbidden         | Allowed               | none                | [fairtracks_study.schema.json](../json/schema/fairtracks_study.schema.json "open original schema") |

## Study Type

`object` ([Study](fairtracks_study.md))

# Study Properties

| Property                          | Type     | Required | Nullable       | Defined by                                                                                                                                                                                                             |
| :-------------------------------- | -------- | -------- | -------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [@schema](#@schema)               | `string` | Optional | cannot be null | [Study](fairtracks_study-properties-schema.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_study.schema.json#/properties/@schema")                         |
| [global_id](#global_id)           | `string` | Optional | cannot be null | [Study](fairtracks_study-properties-global_id.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_study.schema.json#/properties/global_id")                    |
| [local_id](#local_id)             | `string` | Required | cannot be null | [Study](fairtracks_study-properties-local_id.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_study.schema.json#/properties/local_id")                      |
| [collection_ref](#collection_ref) | `string` | Optional | cannot be null | [Study](fairtracks_study-properties-collection_ref.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_study.schema.json#/properties/collection_ref")          |
| [study_name](#study_name)         | `string` | Required | cannot be null | [Study](fairtracks_study-properties-study_name.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_study.schema.json#/properties/study_name")                  |
| [publication](#publication)       | `string` | Optional | cannot be null | [Study](fairtracks_study-properties-publication.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_study.schema.json#/properties/publication")                |
| [contact](#contact)               | Merged   | Required | cannot be null | [Study](fairtracks-properties-collection_info-properties-contact.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_contact.schema.json#/properties/contact") |
| Additional Properties             | Any      | Optional | can be null    |                                                                                                                                                                                                                        |

## @schema

The JSON Schema absolute URL. Used to link JSON data to a JSON schema. Must match the value of '$id' in the linked schema


`@schema`

-   is optional
-   Type: `string`
-   cannot be null
-   defined in: [Study](fairtracks_study-properties-schema.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_study.schema.json#/properties/@schema")
-   format: "uri"

### @schema Type

`string`

### @schema Constraints

**constant**: the value of this property must be equal to:

```json
"https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_study.schema.json"
```

**pattern**: the string must match the following regular expression: 

```regexp
^(https?|ftp)://
```

[try pattern](https://regexr.com/?expression=%5E(https%3F%7Cftp)%3A%2F%2F "try regular expression with regexr.com")

**URI**: the string must be a URI, according to [RFC 3986](https://tools.ietf.org/html/rfc4291 "check the specification")

## global_id

Global study identifier, resolvable by identifiers.org


`global_id`

-   is optional
-   Type: `string`
-   cannot be null
-   defined in: [Study](fairtracks_study-properties-global_id.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_study.schema.json#/properties/global_id")
-   format: "curie"
-   namespace: \["geo","ega.study"]
-   matchType: "canonical"

### global_id Type

`string`

### global_id Constraints

**unknown format**: the value of this string must follow the format: `curie`

### global_id Examples

```json
"geo:GSE35583"
```

## local_id

Submitter-local identifier (within the track collection) for the study


`local_id`

-   is required
-   Type: `string`
-   cannot be null
-   defined in: [Study](fairtracks_study-properties-local_id.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_study.schema.json#/properties/local_id")
-   unique: true

### local_id Type

`string`

### local_id Examples

```json
"UW_ChipSeq"
```

## collection_ref

Reference to the track collection containing the study (using the submitter-local identifier of the collection)


`collection_ref`

-   is optional
-   Type: `string`
-   cannot be null
-   defined in: [Study](fairtracks_study-properties-collection_ref.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_study.schema.json#/properties/collection_ref")
-   format: "foreign_ref"
-   foreignProperty: "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#collection_info/local_id"
-   autogenerated: true

### collection_ref Type

`string`

### collection_ref Constraints

**unknown format**: the value of this string must follow the format: `foreign_ref`

### collection_ref Examples

```json
"encode_example"
```

## study_name

Name of the study


`study_name`

-   is required
-   Type: `string`
-   cannot be null
-   defined in: [Study](fairtracks_study-properties-study_name.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_study.schema.json#/properties/study_name")

### study_name Type

`string`

### study_name Examples

```json
"Histone Modifications by ChIP-seq from ENCODE/University of Washington"
```

## publication

Pubmed identifier (dataset or publication)


`publication`

-   is optional
-   Type: `string`
-   cannot be null
-   defined in: [Study](fairtracks_study-properties-publication.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_study.schema.json#/properties/publication")
-   format: "curie"
-   namespace: "pubmed"
-   matchType: "canonical"

### publication Type

`string`

### publication Constraints

**unknown format**: the value of this string must follow the format: `curie`

### publication Examples

```json
"pubmed:22955617"
```

## contact

Contact information for the track collection


> JSON signature: daba8d50c607720756379d7846d10565cbc1b38101e8014311927710541ba83b
>

`contact`

-   is required
-   Type: `object` ([Contact](fairtracks-properties-collection_info-properties-contact.md))
-   cannot be null
-   defined in: [Study](fairtracks-properties-collection_info-properties-contact.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_contact.schema.json#/properties/contact")

### contact Type

`object` ([Contact](fairtracks-properties-collection_info-properties-contact.md))

any of

-   [Untitled undefined type in Contact](fairtracks_contact-anyof-0.md "check type definition")
-   [Untitled undefined type in Contact](fairtracks_contact-anyof-1.md "check type definition")

## Additional Properties

Additional properties are allowed and do not have to follow a specific schema
