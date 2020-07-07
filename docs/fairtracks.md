# FAIRtracks Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json
```




> JSON signature: ab918721a506857f5b81622763c4cc973ba48ce14ec374063926d80b18e3d671
>

| Abstract            | Extensible | Status         | Identifiable | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                             |
| :------------------ | ---------- | -------------- | ------------ | :---------------- | --------------------- | ------------------- | -------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | No           | Forbidden         | Allowed               | none                | [fairtracks.schema.json](../json/schema/fairtracks.schema.json "open original schema") |

## FAIRtracks Type

`object` ([FAIRtracks](fairtracks.md))

# FAIRtracks Properties

| Property                            | Type     | Required | Nullable       | Defined by                                                                                                                                                                                                     |
| :---------------------------------- | -------- | -------- | -------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [@schema](#@schema)                 | `string` | Required | cannot be null | [FAIRtracks](fairtracks-properties-schema-url.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/@schema")                    |
| [doc_info](#doc_info)               | `object` | Required | cannot be null | [FAIRtracks](fairtracks-properties-document-info.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info")                |
| [collection_info](#collection_info) | `object` | Required | cannot be null | [FAIRtracks](fairtracks-properties-track-collection-info.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/collection_info") |
| [studies](#studies)                 | `array`  | Required | cannot be null | [FAIRtracks](fairtracks-properties-studies.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/studies")                       |
| [experiments](#experiments)         | `array`  | Required | cannot be null | [FAIRtracks](fairtracks-properties-experiments.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/experiments")               |
| [samples](#samples)                 | `array`  | Required | cannot be null | [FAIRtracks](fairtracks-properties-samples.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/samples")                       |
| [tracks](#tracks)                   | `array`  | Required | cannot be null | [FAIRtracks](fairtracks-properties-tracks.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/tracks")                         |
| Additional Properties               | Any      | Optional | can be null    |                                                                                                                                                                                                                |

## @schema

The absolute URL of the 'current' version of the relevant FAIRtracks JSON schema within the same major version as the JSON document follows (which should ensure compatibility). Must match the value of '$id' in the linked schema


`@schema`

-   is required
-   Type: `string` ([Schema URL](fairtracks-properties-schema-url.md))
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-schema-url.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/@schema")
-   format: "uri"

### @schema Type

`string` ([Schema URL](fairtracks-properties-schema-url.md))

### @schema Constraints

**constant**: the value of this property must be equal to:

```json
"https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json"
```

**pattern**: the string must match the following regular expression: 

```regexp
^(https?|ftp)://
```

[try pattern](https://regexr.com/?expression=%5E(https%3F%7Cftp)%3A%2F%2F "try regular expression with regexr.com")

**URI**: the string must be a URI, according to [RFC 3986](https://tools.ietf.org/html/rfc4291 "check the specification")

## doc_info

Version and related information about the current FAIRtracks JSON document


`doc_info`

-   is required
-   Type: `object` ([Document info](fairtracks-properties-document-info.md))
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-document-info.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info")

### doc_info Type

`object` ([Document info](fairtracks-properties-document-info.md))

## collection_info

General information about the track collection that is annotated in the current FAIRtracks JSON document


`collection_info`

-   is required
-   Type: `object` ([Track Collection Info](fairtracks-properties-track-collection-info.md))
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-track-collection-info.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/collection_info")

### collection_info Type

`object` ([Track Collection Info](fairtracks-properties-track-collection-info.md))

## studies

Array of JSON documents describing different studies that have produced data for the track collection


`studies`

-   is required
-   Type: `object[]` ([Study](fairtracks-properties-studies-study.md))
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-studies.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/studies")

### studies Type

`object[]` ([Study](fairtracks-properties-studies-study.md))

### studies Constraints

**minimum number of items**: the minimum number of items for this array is: `1`

## experiments

Array of JSON documents describing the different experiments that have produced data for the track collection


`experiments`

-   is required
-   Type: `object[]` ([Experiment](fairtracks-properties-experiments-experiment.md))
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-experiments.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/experiments")

### experiments Type

`object[]` ([Experiment](fairtracks-properties-experiments-experiment.md))

### experiments Constraints

**minimum number of items**: the minimum number of items for this array is: `1`

## samples

Array of JSON documents describing the different samples that have been analyzed to create the track collection


`samples`

-   is required
-   Type: `object[]` ([Sample](fairtracks-properties-samples-sample.md))
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-samples.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/samples")

### samples Type

`object[]` ([Sample](fairtracks-properties-samples-sample.md))

### samples Constraints

**minimum number of items**: the minimum number of items for this array is: `1`

## tracks

Array of JSON documents describing the different track files in the collection


`tracks`

-   is required
-   Type: `object[]` ([Track](fairtracks-properties-tracks-track.md))
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-tracks.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/tracks")

### tracks Type

`object[]` ([Track](fairtracks-properties-tracks-track.md))

### tracks Constraints

**minimum number of items**: the minimum number of items for this array is: `1`

## Additional Properties

Additional properties are allowed and do not have to follow a specific schema
