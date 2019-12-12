# Track Schema

```
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/master/json/schema/fairtracks_track.schema.json
```

| Abstract            | Extensible | Status       | Identifiable | Custom Properties | Additional Properties | Defined In                                                   |
| ------------------- | ---------- | ------------ | ------------ | ----------------- | --------------------- | ------------------------------------------------------------ |
| Can be instantiated | No         | Experimental | No           | Forbidden         | Permitted             | [fairtracks_track.schema.json](../json/schema/fairtracks_track.schema.json) |

# Track Properties

| Property                          | Type       | Required     | Nullable | Defined by                                 |
| --------------------------------- | ---------- | ------------ | -------- | ------------------------------------------ |
| [@schema](#schema)                | `const`    | Optional     | No       | Track (this schema)                        |
| [assembly_id](#assembly_id)       | `string`   | **Required** | No       | Track (this schema)                        |
| [assembly_name](#assembly_name)   | `string`   | **Required** | No       | Track (this schema)                        |
| [checksum](#checksum)             | `object`   | **Required** | No       | Track (this schema)                        |
| [content_type](#content_type)     | `object`   | **Required** | No       | Track (this schema)                        |
| [experiment_ref](#experiment_ref) | `string`   | **Required** | No       | Track (this schema)                        |
| [file_format](#file_format)       | `object`   | **Required** | No       | Track (this schema)                        |
| [file_name](#file_name)           | `string`   | Optional     | No       | Track (this schema)                        |
| [file_url](#file_url)             | `string`   | **Required** | No       | Track (this schema)                        |
| [genome_assembly](#genome_assembly)               | `string`   | **Required** | No       | Track (this schema)                        |
| [geometric_track_type](#geometric_track_type)     | `enum`     | **Required** | No       | Track (this schema)                        |
| [global_id](#global_id)           | `string`   | Optional     | No       | Track (this schema)                        |
| [label_long](#label_long)         | `string`   | **Required** | No       | Track (this schema)                        |
| [label_short](#label_short)       | `string`   | **Required** | No       | Track (this schema)                        |
| [local_id](#local_id)             | `string`   | **Required** | No       | Track (this schema)                        |
| [raw_file_ids](#raw_file_ids)     | `string[]` | Optional     | No       | Track (this schema)                        |
| [type_of_condensed_data](#type_of_condensed_data) | `enum`     | **Required** | No       | Track (this schema)                        |
| `*`                               | any        | Additional   | Yes      | this schema _allows_ additional properties |

## @schema

The JSON Schema absolute URL. Used to link JSON data to a JSON schema. Must match the value of '\$id' in the linked
schema

`@schema`

- is optional
- type: `const`
- defined in this schema
- format: uri

The value of this property **must** be equal to:

```json
"https://raw.githubusercontent.com/fairtracks/fairtracks_standard/master/json/schema/fairtracks_track.schema.json"
```

## assembly_id

Genome assembly identifier, resolvable by identifiers.org. Tracks should be annotated with the lowest version of the
reference genome that contains all the sequences referenced by the track. Also, GCF (Refseq) ids should be preferred to
GCA (Genbank) ids

`assembly_id`

- is **required**
- type: `string`
- defined in this schema
- format: curie
- namespace: insdc.gca
- matchType: canonical

### assembly_id Type

`string`

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

Genome assembly name or synonym, according to the NCBI Assembly database. For tracks following UCSC-style chromosome
names (e.g., "chr1"), the UCSC synonym should be used instead of the official name

`assembly_name`

- is **required**
- type: `string`
- defined in this schema

### assembly_name Type

`string`

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

## checksum

`checksum`

- is **required**
- type: `object`
- defined in this schema

### checksum Type

`object` with following properties:

| Property    | Type   | Required     |
| ----------- | ------ | ------------ |
| `cs_hash`   | string | **Required** |
| `cs_method` | string | **Required** |

#### cs_hash

Checksum of track file, using the method described in cs_method

`cs_hash`

- is **required**
- type: `string`

##### cs_hash Type

`string`

##### cs_hash Examples

```json
0ab98dbd2a2193ab3e09df030ea4f934
```

```json
6d2c6c99a7407f1c49ab163e41d9b575
```

```json
550ae974bf94f1deb1676613ab24a5da
```

```json
942ea96e86313d4338cf3fd020882c4d
```

#### cs_method

Method of checksum generation

`cs_method`

- is **required**
- type: `enum`

The value of this property **must** be equal to one of the [known values below](#checksum-known-values).

##### cs_method Known Values

| Value     | Description |
| --------- | ----------- |
| `MD5`     |             |
| `SHA-256` |             |

##### cs_method Examples

```json
MD5
```

```json
MD5
```

```json
MD5
```

```json
MD5
```

## experiment_ref

Reference to the experiment of the track (using the submitter-local identifier of the sample)

`experiment_ref`

- is **required**
- type: `string`
- defined in this schema
- format: foreign_ref
- foreignProperty:
  https://raw.githubusercontent.com/fairtracks/fairtracks_standard/master/json/schema/fairtracks_experiment.schema.json#local_id

### experiment_ref Type

`string`

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

## file_format

File format of the track data file

`file_format`

- is **required**
- type: `object`
- defined in this schema

### file_format Type

`object` with following properties:

| Property     | Type   | Required     |
| ------------ | ------ | ------------ |
| `term_id`    | string | **Required** |
| `term_label` | string | Optional     |

#### term_id

URL linking to an ontology term

`term_id`

- is **required**
- type: `string`
- format: term
- ontology: http://edamontology.org/EDAM_1.21.owl
- matchType: exact

##### term_id Type

`string`

All instances must conform to this regular expression

```regex
^(https?|ftp)://
```

- test example:
  [http://edamontology.org/format_3613](<https://regexr.com/?expression=%5E(https%3F%7Cftp)%3A%2F%2F&text=http%3A%2F%2Fedamontology.org%2Fformat_3613>)
- test example:
  [http://edamontology.org/format_3004](<https://regexr.com/?expression=%5E(https%3F%7Cftp)%3A%2F%2F&text=http%3A%2F%2Fedamontology.org%2Fformat_3004>)
- test example:
  [http://edamontology.org/format_3006](<https://regexr.com/?expression=%5E(https%3F%7Cftp)%3A%2F%2F&text=http%3A%2F%2Fedamontology.org%2Fformat_3006>)
- test example:
  [http://edamontology.org/format_3006](<https://regexr.com/?expression=%5E(https%3F%7Cftp)%3A%2F%2F&text=http%3A%2F%2Fedamontology.org%2Fformat_3006>)

##### term_id Examples

```json
http://edamontology.org/format_3613
```

```json
http://edamontology.org/format_3004
```

```json
http://edamontology.org/format_3006
```

```json
http://edamontology.org/format_3006
```

#### term_label

Exact value according to the ontology used

`term_label`

- is optional
- type: `string`
- autogenerated: true

##### term_label Type

`string`

##### term_label Examples

```json
ENCODE narrow peak format
```

```json
bigBed
```

```json
bigWig
```

```json
bigWig
```

## file_name

Name of the track file

`file_name`

- is optional
- type: `string`
- defined in this schema
- autogenerated: true

### file_name Type

`string`

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

## file_url

A URL to the track data file

`file_url`

- is **required**
- type: `string`
- defined in this schema
- format: uri

### file_url Type

`string`

- format: `uri` – Uniformous Resource Identifier (according to [RFC3986](http://tools.ietf.org/html/rfc3986))

All instances must conform to this regular expression

```regex
^(https?|ftp|rsync)://
```

- test example:
  [https://www.encodeproject.org/files/ENCFF625ZYB/@@download/ENCFF625ZYB.bed.gz](<https://regexr.com/?expression=%5E(https%3F%7Cftp%7Crsync)%3A%2F%2F&text=https%3A%2F%2Fwww.encodeproject.org%2Ffiles%2FENCFF625ZYB%2F%40%40download%2FENCFF625ZYB.bed.gz>)
- test example:
  [https://www.encodeproject.org/files/ENCFF718EPO/@@download/ENCFF718EPO.bigBed](<https://regexr.com/?expression=%5E(https%3F%7Cftp%7Crsync)%3A%2F%2F&text=https%3A%2F%2Fwww.encodeproject.org%2Ffiles%2FENCFF718EPO%2F%40%40download%2FENCFF718EPO.bigBed>)
- test example:
  [https://www.encodeproject.org/files/ENCFF717PIO/@@download/ENCFF717PIO.bigWig](<https://regexr.com/?expression=%5E(https%3F%7Cftp%7Crsync)%3A%2F%2F&text=https%3A%2F%2Fwww.encodeproject.org%2Ffiles%2FENCFF717PIO%2F%40%40download%2FENCFF717PIO.bigWig>)
- test example:
  [https://www.encodeproject.org/files/ENCFF955LOC/@@download/ENCFF955LOC.bigWig](<https://regexr.com/?expression=%5E(https%3F%7Cftp%7Crsync)%3A%2F%2F&text=https%3A%2F%2Fwww.encodeproject.org%2Ffiles%2FENCFF955LOC%2F%40%40download%2FENCFF955LOC.bigWig>)

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

## genome_assembly

An assembly identifier (using UCSC nomenclature)

`genome_assembly`

- is **required**
- type: `string`
- defined in this schema

### genome_assembly Type

`string`

### genome_assembly Examples

```json
"GRCh38"
```

```json
"GRCh38"
```

```json
"GRCh38"
```

```json
"GRCh38"
```

## geometric_track_type

Geometric type of track, according to the delineation of tracks into one of fifteen logical track types based upon
their core informational properties (see doi:10.1186/1471-2105-12-494)

`geometric_track_type`

- is **required**
- type: `enum`
- defined in this schema

The value of this property **must** be equal to one of the [known values below](#geometric_track_type-known-values).

### geometric_track_type Known Values

| Value                     | Description |
| ------------------------- | ----------- |
| `Points`                  |             |
| `Valued points`           |             |
| `Segments`                |             |
| `Valued segments`         |             |
| `Genome partition`        |             |
| `Step function`           |             |
| `Function`                |             |
| `Linked points`           |             |
| `Linked valued points`    |             |
| `Linked segments`         |             |
| `Linked valued segments`  |             |
| `Linked genome partition` |             |
| `Linked step function`    |             |
| `Linked function`         |             |
| `Linked base pairs`       |             |

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

## global_id

Global track identifier, resolvable by identifiers.org [to be created by us]

`global_id`

- is optional
- type: `string`
- defined in this schema
- namespace: fairtracks
- autogenerated: true

### global_id Type

`string`

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

## label_long

A long label of the track file. Suggested maximum length is 80 characters

`label_long`

- is **required**
- type: `string`
- defined in this schema

### label_long Type

`string`

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

## label_short

A short label of the track file. Suggested maximum length is 17 characters

`label_short`

- is **required**
- type: `string`
- defined in this schema

### label_short Type

`string`

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

## local_id

Submitter-local identifier (within investigation/hub) for study (in CURIE-format, if applicable)

`local_id`

- is **required**
- type: `string`
- defined in this schema
- unique: true

### local_id Type

`string`

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

## raw_file_ids

`raw_file_ids`

- is optional
- type: `string[]`
- at least `1` items in the array
- defined in this schema

### raw_file_ids Type

Array type: `string[]`

All items must be of the type: `string`

List of identifiers to raw data files used to create track (typically BAM), resolvable by identifiers.org

## type_of_condensed_data

Type of condensed track data: Track data, by definition, is formed downstream of some data condensation process.
However, the condensed data vary in form and content, technically speaking, and thus in their interpretation. Still,
there is a limited set of common types of condensed track data which are able to describe the vast majority of track
files

`type_of_condensed_data`

- is **required**
- type: `enum`
- defined in this schema

The value of this property **must** be equal to one of the [known values below](#type_of_condensed_data-known-values).

### type_of_condensed_data Known Values

| Value                            | Description |
| -------------------------------- | ----------- |
| `Sequence-derived regions`       |             |
| `Experimentally-derived regions` |             |
| `Predicted regions`              |             |
| `Predicted segmentation`         |             |
| `Population-derived variants`    |             |
| `Individual variants`            |             |
| `Peaks`                          |             |
| `Broad peaks`                    |             |
| `Narrow peaks`                   |             |
| `Gapped peaks`                   |             |
| `Signal values (fold change)`    |             |
| `Signal values (p-value)`        |             |
| `Signal values (log likelihood)` |             |
| `Signal values (other)`          |             |
| `Read coverage`                  |             |
| `Read counts`                    |             |
| `Mapped single-end reads`        |             |
| `Mapped paired-end reads`        |             |
| `Other`                          |             |

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
