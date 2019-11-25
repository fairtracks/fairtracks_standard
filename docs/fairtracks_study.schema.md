# FAIRification of Genomic Tracks JSON Schema - Study Schema

```
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/master/json/schema/fairtracks_study.schema.json
```

| Abstract            | Extensible | Status       | Identifiable | Custom Properties | Additional Properties | Defined In                                                   |
| ------------------- | ---------- | ------------ | ------------ | ----------------- | --------------------- | ------------------------------------------------------------ |
| Can be instantiated | No         | Experimental | No           | Forbidden         | Permitted             | [fairtracks_study.schema.json](../json/schema/fairtracks_study.schema.json) |

# FAIRification of Genomic Tracks JSON Schema - Study Properties

| Property                    | Type     | Required     | Nullable | Defined by                                                        |
| --------------------------- | -------- | ------------ | -------- | ----------------------------------------------------------------- |
| [@schema](#schema)          | `const`  | Optional     | No       | FAIRification of Genomic Tracks JSON Schema - Study (this schema) |
| [contact](#contact)         | `object` | **Required** | No       | FAIRification of Genomic Tracks JSON Schema - Study (this schema) |
| [global_id](#global_id)     | `string` | Optional     | No       | FAIRification of Genomic Tracks JSON Schema - Study (this schema) |
| [local_id](#local_id)       | `string` | **Required** | No       | FAIRification of Genomic Tracks JSON Schema - Study (this schema) |
| [publication](#publication) | `string` | Optional     | No       | FAIRification of Genomic Tracks JSON Schema - Study (this schema) |
| [study_name](#study_name)   | `string` | **Required** | No       | FAIRification of Genomic Tracks JSON Schema - Study (this schema) |
| `*`                         | any      | Additional   | Yes      | this schema _allows_ additional properties                        |

## @schema

The JSON schema absolute URL. Used for link JSON data to a particular version of the JSON schema. Must match the value
of '\$id' in the linked schema

`@schema`

- is optional
- type: `const`
- defined in this schema
- format: uri

The value of this property **must** be equal to:

```json
"https://raw.githubusercontent.com/fairtracks/fairtracks_standard/master/json/schema/fairtracks_study.schema.json"
```

## contact

Contact information for study

`contact`

- is **required**
- type: `object`
- defined in this schema

### contact Type

`object` with following properties:

| Property | Type   | Required     |
| -------- | ------ | ------------ |
| `e-mail` | string | Optional     |
| `name`   | string | **Required** |
| `orcid`  | string | Optional     |

#### e-mail

E-mail to contact person/organization

`e-mail`

- is optional
- type: `string`
- format: idn-email

##### e-mail Type

`string`

- format: `idn-email` – international email address (according to [RFC 6531](https://tools.ietf.org/html/rfc6531))

##### e-mail Example

```json
encode-help@lists.stanford.edu
```

#### name

Name of contact person/organization

`name`

- is **required**
- type: `string`

##### name Type

`string`

##### name Example

```json
ENCODE DCC
```

#### orcid

ORCID to contact person

`orcid`

- is optional
- type: `string`
- format: curie
- namespace: orcid
- matchType: canonical

##### orcid Type

`string`

## global_id

Global study identifier, resolvable by identifiers.org

`global_id`

- is optional
- type: `string`
- defined in this schema
- format: curie
- namespace: geo,ega.study
- matchType: canonical

### global_id Type

`string`

### global_id Example

```json
"geo:GSE35583"
```

## local_id

Submitter-local identifier (within investigation/hub) for study

`local_id`

- is **required**
- type: `string`
- defined in this schema
- unique: true

### local_id Type

`string`

### local_id Example

```json
"UW_ChipSeq"
```

## publication

Pubmed identifier (dataset or publication)

`publication`

- is optional
- type: `string`
- defined in this schema
- format: curie
- namespace: pubmed
- matchType: canonical

### publication Type

`string`

### publication Example

```json
"pubmed:22955617"
```

## study_name

Name of the study

`study_name`

- is **required**
- type: `string`
- defined in this schema

### study_name Type

`string`

### study_name Example

```json
"Histone Modifications by ChIP-seq from ENCODE/University of Washington"
```
