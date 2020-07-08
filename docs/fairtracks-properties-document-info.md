# Document info Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info
```

Version and related information about the current FAIRtracks JSON document


| Abstract            | Extensible | Status         | Identifiable | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                               |
| :------------------ | ---------- | -------------- | ------------ | :---------------- | --------------------- | ------------------- | ---------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | No           | Forbidden         | Allowed               | none                | [fairtracks.schema.json\*](../json/schema/fairtracks.schema.json "open original schema") |

## doc_info Type

`object` ([Document info](fairtracks-properties-document-info.md))

# Document info Properties

| Property                                          | Type      | Required | Nullable       | Defined by                                                                                                                                                                                                                                                                  |
| :------------------------------------------------ | --------- | -------- | -------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [local_id](#local_id)                             | `string`  | Required | cannot be null | [FAIRtracks](fairtracks-properties-document-info-properties-local-id.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/local_id")                                     |
| [doc_url](#doc_url)                               | `string`  | Optional | cannot be null | [FAIRtracks](fairtracks-properties-document-info-properties-document-url.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_url")                                  |
| [doc_ontology_versions](#doc_ontology_versions)   | `object`  | Required | cannot be null | [FAIRtracks](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions") |
| [doc_version](#doc_version)                       | `string`  | Required | cannot be null | [FAIRtracks](fairtracks-properties-document-info-properties-document-version.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_version")                          |
| [doc_date](#doc_date)                             | `string`  | Required | cannot be null | [FAIRtracks](fairtracks-properties-document-info-properties-document-creation-date.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_date")                       |
| [has_augmented_metadata](#has_augmented_metadata) | `boolean` | Required | cannot be null | [FAIRtracks](fairtracks-properties-document-info-properties-contains-augmented-metadata.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/has_augmented_metadata")    |

## local_id

Submitter-local identifier (within  track repository) for current FAIRtracks document (in CURIE-format, if applicable)


`local_id`

-   is required
-   Type: `string` ([Local ID](fairtracks-properties-document-info-properties-local-id.md))
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-document-info-properties-local-id.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/local_id")
-   unique: true

### local_id Type

`string` ([Local ID](fairtracks-properties-document-info-properties-local-id.md))

### local_id Examples

```json
"0"
```

## doc_url

URL to this FAIRtracks JSON document


`doc_url`

-   is optional
-   Type: `string` ([Document URL](fairtracks-properties-document-info-properties-document-url.md))
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-document-info-properties-document-url.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_url")
-   format: "uri"

### doc_url Type

`string` ([Document URL](fairtracks-properties-document-info-properties-document-url.md))

### doc_url Constraints

**pattern**: the string must match the following regular expression: 

```regexp
^(https?|ftp)://
```

[try pattern](https://regexr.com/?expression=%5E(https%3F%7Cftp)%3A%2F%2F "try regular expression with regexr.com")

**URI**: the string must be a URI, according to [RFC 3986](https://tools.ietf.org/html/rfc4291 "check the specification")

### doc_url Examples

```json
"https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/1.0.2/json/examples/fairtracks.example.json"
```

## doc_ontology_versions

URLs to the version of the ontologies used in the JSON document


`doc_ontology_versions`

-   is required
-   Type: `object` ([Version URLs to Ontologies used](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used.md))
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions")

### doc_ontology_versions Type

`object` ([Version URLs to Ontologies used](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used.md))

## doc_version

Version of this FAIRtracks JSON document


`doc_version`

-   is required
-   Type: `string` ([Document Version](fairtracks-properties-document-info-properties-document-version.md))
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-document-info-properties-document-version.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_version")

### doc_version Type

`string` ([Document Version](fairtracks-properties-document-info-properties-document-version.md))

## doc_date

Creation date of this version of this FAIRtracks document


`doc_date`

-   is required
-   Type: `string` ([Document Creation Date](fairtracks-properties-document-info-properties-document-creation-date.md))
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-document-info-properties-document-creation-date.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_date")
-   format: "date-time"

### doc_date Type

`string` ([Document Creation Date](fairtracks-properties-document-info-properties-document-creation-date.md))

### doc_date Constraints

**date time**: the string must be a date time string, according to [RFC 3339, section 5.6](https://tools.ietf.org/html/rfc3339 "check the specification")

## has_augmented_metadata

Set to true if the metadata properties with augmented=true is set in the JSON document, as returned by the fairtracks_augment service


`has_augmented_metadata`

-   is required
-   Type: `boolean` ([Contains Augmented Metadata](fairtracks-properties-document-info-properties-contains-augmented-metadata.md))
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-document-info-properties-contains-augmented-metadata.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/has_augmented_metadata")

### has_augmented_metadata Type

`boolean` ([Contains Augmented Metadata](fairtracks-properties-document-info-properties-contains-augmented-metadata.md))

### has_augmented_metadata Examples

```json
false
```
