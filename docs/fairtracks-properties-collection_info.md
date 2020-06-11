# Untitled object in FAIRtracks Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/collection_info
```

General information about the track collection that is annotated in the current FAIRtracks JSON document


| Abstract            | Extensible | Status         | Identifiable | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                               |
| :------------------ | ---------- | -------------- | ------------ | :---------------- | --------------------- | ------------------- | ---------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | No           | Forbidden         | Allowed               | none                | [fairtracks.schema.json\*](../json/schema/fairtracks.schema.json "open original schema") |

## collection_info Type

`object` ([Details](fairtracks-properties-collection_info.md))

# undefined Properties

| Property                                | Type     | Required | Nullable       | Defined by                                                                                                                                                                                                                                                         |
| :-------------------------------------- | -------- | -------- | -------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [source_repo_url](#source_repo_url)     | `string` | Required | cannot be null | [FAIRtracks](fairtracks-properties-collection_info-properties-source_repo_url.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/collection_info/properties/source_repo_url")     |
| [local_id](#local_id)                   | `string` | Optional | cannot be null | [FAIRtracks](fairtracks-properties-collection_info-properties-local_id.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/collection_info/properties/local_id")                   |
| [doc_ref](#doc_ref)                     | `string` | Optional | cannot be null | [FAIRtracks](fairtracks-properties-collection_info-properties-doc_ref.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/collection_info/properties/doc_ref")                     |
| [short_name](#short_name)               | `string` | Required | cannot be null | [FAIRtracks](fairtracks-properties-collection_info-properties-short_name.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/collection_info/properties/short_name")               |
| [long_name](#long_name)                 | `string` | Required | cannot be null | [FAIRtracks](fairtracks-properties-collection_info-properties-long_name.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/collection_info/properties/long_name")                 |
| [description_url](#description_url)     | `string` | Optional | cannot be null | [FAIRtracks](fairtracks-properties-collection_info-properties-description_url.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/collection_info/properties/description_url")     |
| [orig_metadata_url](#orig_metadata_url) | `string` | Optional | cannot be null | [FAIRtracks](fairtracks-properties-collection_info-properties-orig_metadata_url.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/collection_info/properties/orig_metadata_url") |
| [contact](#contact)                     | Merged   | Required | cannot be null | [FAIRtracks](fairtracks-properties-collection_info-properties-contact.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_contact.schema.json#/properties/collection_info/properties/contact")             |

## source_repo_url

URL to the track repository containing the collection (e.g., the Track Hub Registry)


`source_repo_url`

-   is required
-   Type: `string`
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-collection_info-properties-source_repo_url.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/collection_info/properties/source_repo_url")

### source_repo_url Type

`string`

### source_repo_url Constraints

**pattern**: the string must match the following regular expression: 

```regexp
^(https?|ftp)://
```

[try pattern](https://regexr.com/?expression=%5E(https%3F%7Cftp)%3A%2F%2F "try regular expression with regexr.com")

**URI**: the string must be a URI, according to [RFC 3986](https://tools.ietf.org/html/rfc4291 "check the specification")

### source_repo_url Examples

```json
"https://www.encodeproject.org/search"
```

## local_id

Submitter-local identifier (within track repository) for the collection


`local_id`

-   is optional
-   Type: `string`
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-collection_info-properties-local_id.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/collection_info/properties/local_id")

### local_id Type

`string`

### local_id Examples

```json
"encode_example"
```

## doc_ref

Reference to the JSON document containing the study (using the  identifier of the document)


`doc_ref`

-   is optional
-   Type: `string`
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-collection_info-properties-doc_ref.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/collection_info/properties/doc_ref")

### doc_ref Type

`string`

### doc_ref Constraints

**unknown format**: the value of this string must follow the format: `foreign_ref`

### doc_ref Examples

```json
"0"
```

## short_name

Short name of the track collection. Suggested maximum length is 17 characters


`short_name`

-   is required
-   Type: `string`
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-collection_info-properties-short_name.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/collection_info/properties/short_name")

### short_name Type

`string`

### short_name Examples

```json
"ENCODE example"
```

## long_name

Long name of the track collection. Suggested maximum length is 80 characters


`long_name`

-   is required
-   Type: `string`
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-collection_info-properties-long_name.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/collection_info/properties/long_name")

### long_name Type

`string`

### long_name Examples

```json
"Example of a few tracks created by from the ENCODE Project"
```

## description_url

URL to a web page or file describing the track collection


`description_url`

-   is optional
-   Type: `string`
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-collection_info-properties-description_url.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/collection_info/properties/description_url")

### description_url Type

`string`

### description_url Constraints

**pattern**: the string must match the following regular expression: 

```regexp
^(https?|ftp)://
```

[try pattern](https://regexr.com/?expression=%5E(https%3F%7Cftp)%3A%2F%2F "try regular expression with regexr.com")

**URI**: the string must be a URI, according to [RFC 3986](https://tools.ietf.org/html/rfc4291 "check the specification")

### description_url Examples

```json
"https://www.encodeproject.org/help/project-overview/"
```

## orig_metadata_url

URL to track collection metadata in its original form (might contain more than the relevant metadata)


`orig_metadata_url`

-   is optional
-   Type: `string`
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-collection_info-properties-orig_metadata_url.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/collection_info/properties/orig_metadata_url")

### orig_metadata_url Type

`string`

### orig_metadata_url Constraints

**pattern**: the string must match the following regular expression: 

```regexp
^(https?|ftp)://
```

[try pattern](https://regexr.com/?expression=%5E(https%3F%7Cftp)%3A%2F%2F "try regular expression with regexr.com")

**URI**: the string must be a URI, according to [RFC 3986](https://tools.ietf.org/html/rfc4291 "check the specification")

### orig_metadata_url Examples

```json
"https://www.encodeproject.org/search/?format=json"
```

## contact

Contact information for the track collection


> JSON signature: daba8d50c607720756379d7846d10565cbc1b38101e8014311927710541ba83b
>

`contact`

-   is required
-   Type: `object` ([Contact](fairtracks-properties-collection_info-properties-contact.md))
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-collection_info-properties-contact.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_contact.schema.json#/properties/collection_info/properties/contact")

### contact Type

`object` ([Contact](fairtracks-properties-collection_info-properties-contact.md))

any of

-   [Untitled undefined type in Contact](fairtracks_contact-anyof-0.md "check type definition")
-   [Untitled undefined type in Contact](fairtracks_contact-anyof-1.md "check type definition")
