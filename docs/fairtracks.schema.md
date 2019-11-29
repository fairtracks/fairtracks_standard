# FAIRtracks Schema

```
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json
```

| Abstract            | Extensible | Status       | Identifiable | Custom Properties | Additional Properties | Defined In                                       |
| ------------------- | ---------- | ------------ | ------------ | ----------------- | --------------------- | ------------------------------------------------ |
| Can be instantiated | No         | Experimental | No           | Forbidden         | Permitted             | [fairtracks.schema.json](../json/schema/fairtracks.schema.json) |

# FAIRtracks Properties

| Property                            | Type       | Required     | Nullable | Defined by                                 |
| ----------------------------------- | ---------- | ------------ | -------- | ------------------------------------------ |
| [@schema](#schema)                  | `const`    | **Required** | No       | FAIRtracks (this schema)                   |
| [collection_info](#collection_info) | `object`   | **Required** | No       | FAIRtracks (this schema)                   |
| [doc_info](#doc_info)               | `object`   | **Required** | No       | FAIRtracks (this schema)                   |
| [experiments](#experiments)         | Experiment | **Required** | No       | FAIRtracks (this schema)                   |
| [samples](#samples)                 | Sample     | **Required** | No       | FAIRtracks (this schema)                   |
| [studies](#studies)                 | Study      | **Required** | No       | FAIRtracks (this schema)                   |
| [tracks](#tracks)                   | Track      | **Required** | No       | FAIRtracks (this schema)                   |
| `*`                                 | any        | Additional   | Yes      | this schema _allows_ additional properties |

## @schema

The absolute URL of the most recent major version of the relevant FAIRtracks JSON Schema that is backwards-compatible
with the current JSON document. Must match the value of '\$id' in the linked schema

`@schema`

- is **required**
- type: `const`
- defined in this schema
- format: uri

The value of this property **must** be equal to:

```json
"https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json"
```

## collection_info

General information about the collection of tracks that is annotated in the current FAIRtracks JSON document

`collection_info`

- is **required**
- type: `object`
- defined in this schema

### collection_info Type

`object` with following properties:

| Property            | Type    | Required     |
| ------------------- | ------- | ------------ |
| `contact`           | Contact | **Required** |
| `description_url`   | string  | Optional     |
| `long_name`         | string  | **Required** |
| `orig_metadata_url` | string  | Optional     |
| `short_name`        | string  | **Required** |
| `source_repo`       | object  | Optional     |

#### contact

Contact information for the track collection

`contact`

- is **required**
- type: Contact

##### contact Type

- [Contact](fairtracks_contact.schema.md) –
  `https://raw.githubusercontent.com/fairtracks/fairtracks_standard/master/json/schema/fairtracks_contact.schema.json`

#### description_url

URL to a web page or file describing the track collection

`description_url`

- is optional
- type: `string`
- format: uri

##### description_url Type

`string`

- format: `uri` – Uniformous Resource Identifier (according to [RFC3986](http://tools.ietf.org/html/rfc3986))

All instances must conform to this regular expression

```regex
^(https?|ftp)://
```

- test example:
  [https://www.encodeproject.org/help/project-overview/](<https://regexr.com/?expression=%5E(https%3F%7Cftp)%3A%2F%2F&text=https%3A%2F%2Fwww.encodeproject.org%2Fhelp%2Fproject-overview%2F>)

##### description_url Example

```json
https://www.encodeproject.org/help/project-overview/
```

#### long_name

Long name of the track collection. Suggested maximum length is 80 characters

`long_name`

- is **required**
- type: `string`

##### long_name Type

`string`

##### long_name Example

```json
Example of a few tracks created by from the ENCODE Project
```

#### orig_metadata_url

URL to track collection metadata in its original form (might contain more than the relevant metadata)

`orig_metadata_url`

- is optional
- type: `string`
- format: uri

##### orig_metadata_url Type

`string`

- format: `uri` – Uniformous Resource Identifier (according to [RFC3986](http://tools.ietf.org/html/rfc3986))

All instances must conform to this regular expression

```regex
^(https?|ftp)://
```

- test example:
  [https://www.encodeproject.org/search/?format=json](<https://regexr.com/?expression=%5E(https%3F%7Cftp)%3A%2F%2F&text=https%3A%2F%2Fwww.encodeproject.org%2Fsearch%2F%3Fformat%3Djson>)

##### orig_metadata_url Example

```json
https://www.encodeproject.org/search/?format=json
```

#### short_name

Short name of the track collection. Suggested maximum length is 17 characters

`short_name`

- is **required**
- type: `string`

##### short_name Type

`string`

##### short_name Example

```json
ENCODE example
```

#### source_repo

`source_repo`

- is optional
- type: `object`

##### source_repo Type

`object` with following properties:

| Property   | Type   | Required     |
| ---------- | ------ | ------------ |
| `local_id` | string | Optional     |
| `repo_url` | string | **Required** |

#### local_id

Submitter-local identifier (within track repository) for the collection

`local_id`

- is optional
- type: `string`

##### local_id Type

`string`

#### repo_url

URL to the track repository containing the collection (e.g., the Track Hub Registry)

`repo_url`

- is **required**
- type: `string`
- format: uri

##### repo_url Type

`string`

- format: `uri` – Uniformous Resource Identifier (according to [RFC3986](http://tools.ietf.org/html/rfc3986))

All instances must conform to this regular expression

```regex
^(https?|ftp)://
```

- test example:
  [https://www.encodeproject.org/search](<https://regexr.com/?expression=%5E(https%3F%7Cftp)%3A%2F%2F&text=https%3A%2F%2Fwww.encodeproject.org%2Fsearch>)

##### repo_url Example

```json
https://www.encodeproject.org/search
```

## doc_info

Version and related information about the current FAIRtracks JSON document

`doc_info`

- is **required**
- type: `object`
- defined in this schema

### doc_info Type

`object` with following properties:

| Property      | Type   | Required     |
| ------------- | ------ | ------------ |
| `doc_date`    | string | **Required** |
| `doc_url`     | string | Optional     |
| `doc_version` | string | **Required** |

#### doc_date

Creation date of this version of this FAIRtracks document

`doc_date`

- is **required**
- type: `string`
- format: date-time

##### doc_date Type

`string`

- format: `date-time` – date and time (according to [RFC 3339, section 5.6](http://tools.ietf.org/html/rfc3339))

#### doc_url

URL to this FAIRtracks JSON document

`doc_url`

- is optional
- type: `string`
- format: uri

##### doc_url Type

`string`

- format: `uri` – Uniformous Resource Identifier (according to [RFC3986](http://tools.ietf.org/html/rfc3986))

All instances must conform to this regular expression

```regex
^(https?|ftp)://
```

- test example:
  [https://raw.githubusercontent.com/fairtracks/fairtracks_standard/master/json/examples/fairtracks.example.json](<https://regexr.com/?expression=%5E(https%3F%7Cftp)%3A%2F%2F&text=https%3A%2F%2Fraw.githubusercontent.com%2Ffairtracks%2Ffairtracks_standard%2Fmaster%2Fjson%2Fexamples%2Ffairtracks.example.json>)

##### doc_url Example

```json
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/master/json/examples/fairtracks.example.json
```

#### doc_version

Version of this FAIRtracks JSON document

`doc_version`

- is **required**
- type: `string`

##### doc_version Type

`string`

## experiments

Array of JSON documents describing the different experiments that have produced data for the track collection

`experiments`

- is **required**
- type: Experiment
- at least `1` items in the array
- defined in this schema

### experiments Type

Array type: Experiment

All items must be of the type:

- [Experiment](fairtracks_experiment.schema.md) –
  `https://raw.githubusercontent.com/fairtracks/fairtracks_standard/master/json/schema/fairtracks_experiment.schema.json`

## samples

Array of JSON documents describing the different samples that have been analyzed to create the track collection

`samples`

- is **required**
- type: Sample
- at least `1` items in the array
- defined in this schema

### samples Type

Array type: Sample

All items must be of the type:

- [Sample](fairtracks_sample.schema.md) –
  `https://raw.githubusercontent.com/fairtracks/fairtracks_standard/master/json/schema/fairtracks_sample.schema.json`

## studies

Array of JSON documents describing different studies that have produced data for the track collection

`studies`

- is **required**
- type: Study
- at least `1` items in the array
- defined in this schema

### studies Type

Array type: Study

All items must be of the type:

- [Study](fairtracks_study.schema.md) –
  `https://raw.githubusercontent.com/fairtracks/fairtracks_standard/master/json/schema/fairtracks_study.schema.json`

## tracks

Array of JSON documents describing the different track files in the collection

`tracks`

- is **required**
- type: Track
- at least `1` items in the array
- defined in this schema

### tracks Type

Array type: Track

All items must be of the type:

- [Track](fairtracks_track.schema.md) –
  `https://raw.githubusercontent.com/fairtracks/fairtracks_standard/master/json/schema/fairtracks_track.schema.json`
