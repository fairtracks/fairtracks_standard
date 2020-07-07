# Track Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json#/properties/tracks/items
```




> JSON signature: 542c88827c2484762bdfbd3deafe566c62fa27c5fcb3ab6fc171b856c8b203e2
>

| Abstract            | Extensible | Status         | Identifiable | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                               |
| :------------------ | ---------- | -------------- | ------------ | :---------------- | --------------------- | ------------------- | ---------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | No           | Forbidden         | Allowed               | none                | [fairtracks.schema.json\*](../json/schema/fairtracks.schema.json "open original schema") |

## items Type

`object` ([Track](fairtracks-properties-tracks-track.md))

# Track Properties

| Property                                          | Type     | Required | Nullable       | Defined by                                                                                                                                                                                                                          |
| :------------------------------------------------ | -------- | -------- | -------------- | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [@schema](#@schema)                               | `string` | Optional | cannot be null | [Track](fairtracks_track-properties-schema-url.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json#/properties/@schema")                                  |
| [global_id](#global_id)                           | `string` | Optional | cannot be null | [Track](fairtracks_track-properties-global-id.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json#/properties/global_id")                                 |
| [local_id](#local_id)                             | `string` | Required | cannot be null | [Track](fairtracks_track-properties-local-id.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json#/properties/local_id")                                   |
| [assembly_id](#assembly_id)                       | `string` | Required | cannot be null | [Track](fairtracks_track-properties-genome-assembly-id.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json#/properties/assembly_id")                      |
| [assembly_name](#assembly_name)                   | `string` | Required | cannot be null | [Track](fairtracks_track-properties-genome-assembly-name.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json#/properties/assembly_name")                  |
| [experiment_ref](#experiment_ref)                 | `string` | Required | cannot be null | [Track](fairtracks_track-properties-experiment-reference.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json#/properties/experiment_ref")                 |
| [raw_file_ids](#raw_file_ids)                     | `array`  | Optional | cannot be null | [Track](fairtracks_track-properties-raw-file-ids.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json#/properties/raw_file_ids")                           |
| [file_url](#file_url)                             | `string` | Required | cannot be null | [Track](fairtracks_track-properties-file-url.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json#/properties/file_url")                                   |
| [file_name](#file_name)                           | `string` | Optional | cannot be null | [Track](fairtracks_track-properties-file-name.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json#/properties/file_name")                                 |
| [label_short](#label_short)                       | `string` | Required | cannot be null | [Track](fairtracks_track-properties-label-short.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json#/properties/label_short")                             |
| [label_long](#label_long)                         | `string` | Required | cannot be null | [Track](fairtracks_track-properties-label-long.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json#/properties/label_long")                               |
| [file_format](#file_format)                       | `object` | Required | cannot be null | [Track](fairtracks_track-properties-file-format.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json#/properties/file_format")                             |
| [type_of_condensed_data](#type_of_condensed_data) | `string` | Required | cannot be null | [Track](fairtracks_track-properties-type-of-condensed-track-data.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json#/properties/type_of_condensed_data") |
| [geometric_track_type](#geometric_track_type)     | `string` | Required | cannot be null | [Track](fairtracks_track-properties-geometric-track-type.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json#/properties/geometric_track_type")           |
| [checksum](#checksum)                             | `object` | Required | cannot be null | [Track](fairtracks_track-properties-file-checksum.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json#/properties/checksum")                              |
| Additional Properties                             | Any      | Optional | can be null    |                                                                                                                                                                                                                                     |

## @schema

The JSON Schema absolute URL. Used to link JSON data to a JSON schema. Must match the value of '$id' in the linked schema


`@schema`

-   is optional
-   Type: `string` ([Schema URL](fairtracks_track-properties-schema-url.md))
-   cannot be null
-   defined in: [Track](fairtracks_track-properties-schema-url.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json#/properties/@schema")
-   format: "uri"

### @schema Type

`string` ([Schema URL](fairtracks_track-properties-schema-url.md))

### @schema Constraints

**constant**: the value of this property must be equal to:

```json
"https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json"
```

**pattern**: the string must match the following regular expression: 

```regexp
^(https?|ftp)://
```

[try pattern](https://regexr.com/?expression=%5E(https%3F%7Cftp)%3A%2F%2F "try regular expression with regexr.com")

**URI**: the string must be a URI, according to [RFC 3986](https://tools.ietf.org/html/rfc4291 "check the specification")

## global_id

Global track identifier, resolvable by identifiers.org [to be created by us]


`global_id`

-   is optional
-   Type: `string` ([Global ID](fairtracks_track-properties-global-id.md))
-   cannot be null
-   defined in: [Track](fairtracks_track-properties-global-id.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json#/properties/global_id")
-   namespace: "fairtracks"
-   autogenerated: true

### global_id Type

`string` ([Global ID](fairtracks_track-properties-global-id.md))

### global_id Examples

```json
"fairtracks:1"
```

```json
"fairtracks:2"
```

```json
"fairtracks:3"
```

```json
"fairtracks:4"
```

## local_id

Submitter-local identifier (within investigation/hub) for study (in CURIE-format, if applicable)


`local_id`

-   is required
-   Type: `string` ([Local ID](fairtracks_track-properties-local-id.md))
-   cannot be null
-   defined in: [Track](fairtracks_track-properties-local-id.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json#/properties/local_id")
-   unique: true

### local_id Type

`string` ([Local ID](fairtracks_track-properties-local-id.md))

### local_id Examples

```json
"encode:ENCFF625ZYB"
```

```json
"encode:ENCFF718EPO"
```

```json
"encode:ENCFF717PIO"
```

```json
"encode:ENCFF955LOC"
```

## assembly_id

Genome assembly identifier, resolvable by identifiers.org. Tracks should be annotated with the lowest version of the reference genome that contains all the sequences referenced by the track. Also, GCF (Refseq) ids should be preferred to GCA (Genbank) ids


`assembly_id`

-   is required
-   Type: `string` ([Genome Assembly ID](fairtracks_track-properties-genome-assembly-id.md))
-   cannot be null
-   defined in: [Track](fairtracks_track-properties-genome-assembly-id.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json#/properties/assembly_id")
-   format: "curie"
-   namespace: "insdc.gca"
-   matchType: "canonical"

### assembly_id Type

`string` ([Genome Assembly ID](fairtracks_track-properties-genome-assembly-id.md))

### assembly_id Constraints

**unknown format**: the value of this string must follow the format: `curie`

### assembly_id Examples

```json
"insdc.gca:GCF_000001405.26"
```

```json
"insdc.gca:GCF_000001405.26"
```

```json
"insdc.gca:GCF_000001405.26"
```

```json
"insdc.gca:GCF_000001405.26"
```

## assembly_name

Genome assembly name or synonym, according to the NCBI Assembly database. For tracks following UCSC-style chromosome names (e.g., "chr1"), the UCSC synonym should be used instead of the official name


`assembly_name`

-   is required
-   Type: `string` ([Genome Assembly Name](fairtracks_track-properties-genome-assembly-name.md))
-   cannot be null
-   defined in: [Track](fairtracks_track-properties-genome-assembly-name.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json#/properties/assembly_name")

### assembly_name Type

`string` ([Genome Assembly Name](fairtracks_track-properties-genome-assembly-name.md))

### assembly_name Examples

```json
"hg38"
```

```json
"hg38"
```

```json
"hg38"
```

```json
"hg38"
```

## experiment_ref

Reference to the experiment of the track (using the submitter-local identifier of the sample)


`experiment_ref`

-   is required
-   Type: `string` ([Experiment Reference](fairtracks_track-properties-experiment-reference.md))
-   cannot be null
-   defined in: [Track](fairtracks_track-properties-experiment-reference.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json#/properties/experiment_ref")
-   format: "foreign_ref"
-   foreignProperty: "fairtracks_experiment.schema.json#local_id"

### experiment_ref Type

`string` ([Experiment Reference](fairtracks_track-properties-experiment-reference.md))

### experiment_ref Constraints

**unknown format**: the value of this string must follow the format: `foreign_ref`

### experiment_ref Examples

```json
"encode:ENCSR000DQP"
```

```json
"encode:ENCSR000DQP"
```

```json
"encode:ENCSR000DQP"
```

```json
"encode:ENCSR000DQP"
```

## raw_file_ids




`raw_file_ids`

-   is optional
-   Type: `string[]`
-   cannot be null
-   defined in: [Track](fairtracks_track-properties-raw-file-ids.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json#/properties/raw_file_ids")

### raw_file_ids Type

`string[]`

### raw_file_ids Constraints

**minimum number of items**: the minimum number of items for this array is: `1`

## file_url

A URL to the track data file


`file_url`

-   is required
-   Type: `string` ([File URL](fairtracks_track-properties-file-url.md))
-   cannot be null
-   defined in: [Track](fairtracks_track-properties-file-url.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json#/properties/file_url")
-   format: "uri"

### file_url Type

`string` ([File URL](fairtracks_track-properties-file-url.md))

### file_url Constraints

**pattern**: the string must match the following regular expression: 

```regexp
^(https?|ftp|rsync)://
```

[try pattern](https://regexr.com/?expression=%5E(https%3F%7Cftp%7Crsync)%3A%2F%2F "try regular expression with regexr.com")

**URI**: the string must be a URI, according to [RFC 3986](https://tools.ietf.org/html/rfc4291 "check the specification")

### file_url Examples

```json
"https://www.encodeproject.org/files/ENCFF625ZYB/@@download/ENCFF625ZYB.bed.gz"
```

```json
"https://www.encodeproject.org/files/ENCFF718EPO/@@download/ENCFF718EPO.bigBed"
```

```json
"https://www.encodeproject.org/files/ENCFF717PIO/@@download/ENCFF717PIO.bigWig"
```

```json
"https://www.encodeproject.org/files/ENCFF955LOC/@@download/ENCFF955LOC.bigWig"
```

## file_name

Name of the track file


`file_name`

-   is optional
-   Type: `string` ([File Name](fairtracks_track-properties-file-name.md))
-   cannot be null
-   defined in: [Track](fairtracks_track-properties-file-name.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json#/properties/file_name")
-   autogenerated: true

### file_name Type

`string` ([File Name](fairtracks_track-properties-file-name.md))

### file_name Examples

```json
"r1.narrowPeak.gz"
```

```json
"r1.narrowPeak.bb"
```

```json
"r1.fc_signal.bw"
```

```json
"r1.pvalue_signal.bw"
```

## label_short

A short label of the track file. Suggested maximum length is 17 characters


`label_short`

-   is required
-   Type: `string` ([Label (Short)](fairtracks_track-properties-label-short.md))
-   cannot be null
-   defined in: [Track](fairtracks_track-properties-label-short.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json#/properties/label_short")

### label_short Type

`string` ([Label (Short)](fairtracks_track-properties-label-short.md))

### label_short Examples

```json
"ENCFF625ZYB"
```

```json
"ENCFF718EPO"
```

```json
"ENCFF717PIO"
```

```json
" ENCFF955LOC"
```

## label_long

A long label of the track file. Suggested maximum length is 80 characters


`label_long`

-   is required
-   Type: `string` ([Label (Long)](fairtracks_track-properties-label-long.md))
-   cannot be null
-   defined in: [Track](fairtracks_track-properties-label-long.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json#/properties/label_long")

### label_long Type

`string` ([Label (Long)](fairtracks_track-properties-label-long.md))

### label_long Examples

```json
"H3K4me3 ChIP-seq of B cell peaks rep1 ENCSR000DQP - ENCFF625ZYB"
```

```json
"H3K4me3 ChIP-seq of B cell peaks rep1 ENCSR000DQP - ENCFF718EPO"
```

```json
"H3K4me3 ChIP-seq of B cell fold change over control rep1 ENCSR000DQP - ENCFF717PIO"
```

```json
"H3K4me3 ChIP-seq of B cell signal p-value rep1 ENCSR000DQP - ENCFF955LOC"
```

## file_format

File format of the track data file


`file_format`

-   is required
-   Type: `object` ([File Format](fairtracks_track-properties-file-format.md))
-   cannot be null
-   defined in: [Track](fairtracks_track-properties-file-format.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json#/properties/file_format")

### file_format Type

`object` ([File Format](fairtracks_track-properties-file-format.md))

## type_of_condensed_data

Type of condensed track data: Track data, by definition, is formed downstream of some data condensation process. However, the condensed data vary in form and content, technically speaking, and thus in their interpretation. Still, there is a limited set of common types of condensed track data which are able to describe the vast majority of track files


`type_of_condensed_data`

-   is required
-   Type: `string` ([Type of Condensed Track Data](fairtracks_track-properties-type-of-condensed-track-data.md))
-   cannot be null
-   defined in: [Track](fairtracks_track-properties-type-of-condensed-track-data.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json#/properties/type_of_condensed_data")

### type_of_condensed_data Type

`string` ([Type of Condensed Track Data](fairtracks_track-properties-type-of-condensed-track-data.md))

### type_of_condensed_data Constraints

**enum**: the value of this property must be equal to one of the following values:

| Value                              | Explanation |
| :--------------------------------- | ----------- |
| `"Sequence-derived regions"`       |             |
| `"Experimentally-derived regions"` |             |
| `"Predicted regions"`              |             |
| `"Predicted segmentation"`         |             |
| `"Population-derived variants"`    |             |
| `"Individual variants"`            |             |
| `"Peaks"`                          |             |
| `"Broad peaks"`                    |             |
| `"Narrow peaks"`                   |             |
| `"Gapped peaks"`                   |             |
| `"Signal values (fold change)"`    |             |
| `"Signal values (p-value)"`        |             |
| `"Signal values (log likelihood)"` |             |
| `"Signal values (other)"`          |             |
| `"Read coverage"`                  |             |
| `"Read counts"`                    |             |
| `"Mapped single-end reads"`        |             |
| `"Mapped paired-end reads"`        |             |
| `"Other"`                          |             |

### type_of_condensed_data Examples

```json
"Narrow peaks"
```

```json
"Narrow peaks"
```

```json
"Signal values (fold change)"
```

```json
"Signal values (p-value)"
```

## geometric_track_type

Geometric type of track, according to the delineation of tracks into one of fifteen logical track types based upon their core informational properties (see doi:10.1186/1471-2105-12-494) 


`geometric_track_type`

-   is required
-   Type: `string` ([Geometric Track Type](fairtracks_track-properties-geometric-track-type.md))
-   cannot be null
-   defined in: [Track](fairtracks_track-properties-geometric-track-type.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json#/properties/geometric_track_type")

### geometric_track_type Type

`string` ([Geometric Track Type](fairtracks_track-properties-geometric-track-type.md))

### geometric_track_type Constraints

**enum**: the value of this property must be equal to one of the following values:

| Value                       | Explanation |
| :-------------------------- | ----------- |
| `"Points"`                  |             |
| `"Valued points"`           |             |
| `"Segments"`                |             |
| `"Valued segments"`         |             |
| `"Genome partition"`        |             |
| `"Step function"`           |             |
| `"Function"`                |             |
| `"Linked points"`           |             |
| `"Linked valued points"`    |             |
| `"Linked segments"`         |             |
| `"Linked valued segments"`  |             |
| `"Linked genome partition"` |             |
| `"Linked step function"`    |             |
| `"Linked function"`         |             |
| `"Linked base pairs"`       |             |

### geometric_track_type Examples

```json
"Segments"
```

```json
"Segments"
```

```json
"Step function"
```

```json
"Step function"
```

## checksum




`checksum`

-   is required
-   Type: `object` ([File Checksum](fairtracks_track-properties-file-checksum.md))
-   cannot be null
-   defined in: [Track](fairtracks_track-properties-file-checksum.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json#/properties/checksum")

### checksum Type

`object` ([File Checksum](fairtracks_track-properties-file-checksum.md))

## Additional Properties

Additional properties are allowed and do not have to follow a specific schema
