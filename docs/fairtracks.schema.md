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
  `https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_contact.schema.json`

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

| Property                | Type   | Required     |
| ----------------------- | ------ | ------------ |
| `doc_date`              | string | **Required** |
| `doc_ontology_versions` | object | **Required** |
| `doc_url`               | string | Optional     |
| `doc_version`           | string | **Required** |

#### doc_date

Creation date of this version of this FAIRtracks document

`doc_date`

- is **required**
- type: `string`
- format: date-time

##### doc_date Type

`string`

- format: `date-time` – date and time (according to [RFC 3339, section 5.6](http://tools.ietf.org/html/rfc3339))

#### doc_ontology_versions

URLs to the version of the ontologies used in the JSON document

`doc_ontology_versions`

- is **required**
- type: `object`

##### doc_ontology_versions Type

`object` with following properties:

| Property                                    | Type   | Required     |
| ------------------------------------------- | ------ | ------------ |
| `http://edamontology.org/EDAM.owl`          | string | **Required** |
| `http://purl.obolibrary.org/obo/cl.owl`     | string | **Required** |
| `http://purl.obolibrary.org/obo/ncit.owl`   | string | **Required** |
| `http://purl.obolibrary.org/obo/obi.owl`    | string | **Required** |
| `http://purl.obolibrary.org/obo/so.owl`     | string | **Required** |
| `http://purl.obolibrary.org/obo/uberon.owl` | string | **Required** |
| `http://www.ebi.ac.uk/efo/efo.owl`          | string | **Required** |

#### http://edamontology.org/EDAM.owl

`http://edamontology.org/EDAM.owl`

- is **required**
- type: `string`
- format: uri
- autogenerated: true

##### http://edamontology.org/EDAM.owl Type

`string`

- format: `uri` – Uniformous Resource Identifier (according to [RFC3986](http://tools.ietf.org/html/rfc3986))

All instances must conform to this regular expression

```regex
^http://edamontology.org/EDAM_[0-9]+\.[0-9]+.owl$
```

- test example:
  [http://edamontology.org/EDAM_1.21.owl](https://regexr.com/?expression=%5Ehttp%3A%2F%2Fedamontology.org%2FEDAM_%5B0-9%5D%2B%5C.%5B0-9%5D%2B.owl%24&text=http%3A%2F%2Fedamontology.org%2FEDAM_1.21.owl)

##### http://edamontology.org/EDAM.owl Example

```json
http://edamontology.org/EDAM_1.21.owl
```

#### http://purl.obolibrary.org/obo/cl.owl

`http://purl.obolibrary.org/obo/cl.owl`

- is **required**
- type: `string`
- format: uri
- autogenerated: true

##### http://purl.obolibrary.org/obo/cl.owl Type

`string`

- format: `uri` – Uniformous Resource Identifier (according to [RFC3986](http://tools.ietf.org/html/rfc3986))

All instances must conform to this regular expression

```regex
^http://purl.obolibrary.org/obo/cl/releases/[0-9]+-[0-9]+-[0-9]+/cl.owl$
```

- test example:
  [http://purl.obolibrary.org/obo/cl/releases/2019-08-12/cl.owl](https://regexr.com/?expression=%5Ehttp%3A%2F%2Fpurl.obolibrary.org%2Fobo%2Fcl%2Freleases%2F%5B0-9%5D%2B-%5B0-9%5D%2B-%5B0-9%5D%2B%2Fcl.owl%24&text=http%3A%2F%2Fpurl.obolibrary.org%2Fobo%2Fcl%2Freleases%2F2019-08-12%2Fcl.owl)

##### http://purl.obolibrary.org/obo/cl.owl Example

```json
http://purl.obolibrary.org/obo/cl/releases/2019-08-12/cl.owl
```

#### http://purl.obolibrary.org/obo/ncit.owl

`http://purl.obolibrary.org/obo/ncit.owl`

- is **required**
- type: `string`
- format: uri
- autogenerated: true

##### http://purl.obolibrary.org/obo/ncit.owl Type

`string`

- format: `uri` – Uniformous Resource Identifier (according to [RFC3986](http://tools.ietf.org/html/rfc3986))

All instances must conform to this regular expression

```regex
^http://purl.obolibrary.org/obo/ncit/releases/[0-9]+-[0-9]+-[0-9]+/ncit.owl$
```

- test example:
  [http://purl.obolibrary.org/obo/ncit/releases/2019-09-09/ncit.owl](https://regexr.com/?expression=%5Ehttp%3A%2F%2Fpurl.obolibrary.org%2Fobo%2Fncit%2Freleases%2F%5B0-9%5D%2B-%5B0-9%5D%2B-%5B0-9%5D%2B%2Fncit.owl%24&text=http%3A%2F%2Fpurl.obolibrary.org%2Fobo%2Fncit%2Freleases%2F2019-09-09%2Fncit.owl)

##### http://purl.obolibrary.org/obo/ncit.owl Example

```json
http://purl.obolibrary.org/obo/ncit/releases/2019-09-09/ncit.owl
```

#### http://purl.obolibrary.org/obo/obi.owl

`http://purl.obolibrary.org/obo/obi.owl`

- is **required**
- type: `string`
- format: uri
- autogenerated: true

##### http://purl.obolibrary.org/obo/obi.owl Type

`string`

- format: `uri` – Uniformous Resource Identifier (according to [RFC3986](http://tools.ietf.org/html/rfc3986))

All instances must conform to this regular expression

```regex
^http://purl.obolibrary.org/obo/obi/[0-9]+-[0-9]+-[0-9]+/obi.owl$
```

- test example:
  [http://purl.obolibrary.org/obo/obi/2019-11-12/obi.owl](https://regexr.com/?expression=%5Ehttp%3A%2F%2Fpurl.obolibrary.org%2Fobo%2Fobi%2F%5B0-9%5D%2B-%5B0-9%5D%2B-%5B0-9%5D%2B%2Fobi.owl%24&text=http%3A%2F%2Fpurl.obolibrary.org%2Fobo%2Fobi%2F2019-11-12%2Fobi.owl)

##### http://purl.obolibrary.org/obo/obi.owl Example

```json
http://purl.obolibrary.org/obo/obi/2019-11-12/obi.owl
```

#### http://purl.obolibrary.org/obo/so.owl

`http://purl.obolibrary.org/obo/so.owl`

- is **required**
- type: `string`
- format: uri
- autogenerated: true

##### http://purl.obolibrary.org/obo/so.owl Type

`string`

- format: `uri` – Uniformous Resource Identifier (according to [RFC3986](http://tools.ietf.org/html/rfc3986))

All instances must conform to this regular expression

```regex
^https://raw.githubusercontent.com/The-Sequence-Ontology/SO-Ontologies/v[0-9]+\.[0-9]+/releases/so-xp.owl/so.owl$
```

- test example:
  [https://raw.githubusercontent.com/The-Sequence-Ontology/SO-Ontologies/v3.1/releases/so-xp.owl/so.owl](https://regexr.com/?expression=%5Ehttps%3A%2F%2Fraw.githubusercontent.com%2FThe-Sequence-Ontology%2FSO-Ontologies%2Fv%5B0-9%5D%2B%5C.%5B0-9%5D%2B%2Freleases%2Fso-xp.owl%2Fso.owl%24&text=https%3A%2F%2Fraw.githubusercontent.com%2FThe-Sequence-Ontology%2FSO-Ontologies%2Fv3.1%2Freleases%2Fso-xp.owl%2Fso.owl)

##### http://purl.obolibrary.org/obo/so.owl Example

```json
https://raw.githubusercontent.com/The-Sequence-Ontology/SO-Ontologies/v3.1/releases/so-xp.owl/so.owl
```

#### http://purl.obolibrary.org/obo/uberon.owl

`http://purl.obolibrary.org/obo/uberon.owl`

- is **required**
- type: `string`
- format: uri
- autogenerated: true

##### http://purl.obolibrary.org/obo/uberon.owl Type

`string`

- format: `uri` – Uniformous Resource Identifier (according to [RFC3986](http://tools.ietf.org/html/rfc3986))

All instances must conform to this regular expression

```regex
^http://purl.obolibrary.org/obo/uberon/releases/[0-9]+-[0-9]+-[0-9]+/uberon.owl$
```

- test example:
  [http://purl.obolibrary.org/obo/uberon/releases/2019-06-27/uberon.owl](https://regexr.com/?expression=%5Ehttp%3A%2F%2Fpurl.obolibrary.org%2Fobo%2Fuberon%2Freleases%2F%5B0-9%5D%2B-%5B0-9%5D%2B-%5B0-9%5D%2B%2Fuberon.owl%24&text=http%3A%2F%2Fpurl.obolibrary.org%2Fobo%2Fuberon%2Freleases%2F2019-06-27%2Fuberon.owl)

##### http://purl.obolibrary.org/obo/uberon.owl Example

```json
http://purl.obolibrary.org/obo/uberon/releases/2019-06-27/uberon.owl
```

#### http://www.ebi.ac.uk/efo/efo.owl

`http://www.ebi.ac.uk/efo/efo.owl`

- is **required**
- type: `string`
- format: uri
- autogenerated: true

##### http://www.ebi.ac.uk/efo/efo.owl Type

`string`

- format: `uri` – Uniformous Resource Identifier (according to [RFC3986](http://tools.ietf.org/html/rfc3986))

All instances must conform to this regular expression

```regex
^https://github.com/EBISPOT/efo/releases/download/v[0-9]+.[0-9]+.[0-9]+/efo.owl$
```

- test example:
  [https://github.com/EBISPOT/efo/releases/download/v3.12.0/efo.owl](https://regexr.com/?expression=%5Ehttps%3A%2F%2Fgithub.com%2FEBISPOT%2Fefo%2Freleases%2Fdownload%2Fv%5B0-9%5D%2B.%5B0-9%5D%2B.%5B0-9%5D%2B%2Fefo.owl%24&text=https%3A%2F%2Fgithub.com%2FEBISPOT%2Fefo%2Freleases%2Fdownload%2Fv3.12.0%2Fefo.owl)

##### http://www.ebi.ac.uk/efo/efo.owl Example

```json
https://github.com/EBISPOT/efo/releases/download/v3.12.0/efo.owl
```

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
  [https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/examples/fairtracks.example.json](<https://regexr.com/?expression=%5E(https%3F%7Cftp)%3A%2F%2F&text=https%3A%2F%2Fraw.githubusercontent.com%2Ffairtracks%2Ffairtracks_standard%2Fv1%2Fcurrent%2Fjson%2Fexamples%2Ffairtracks.example.json>)

##### doc_url Example

```json
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/examples/fairtracks.example.json
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
  `https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json`

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
  `https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_sample.schema.json`

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
  `https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_study.schema.json`

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
  `https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json`
