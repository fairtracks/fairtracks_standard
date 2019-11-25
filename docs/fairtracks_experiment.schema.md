# Experiment Schema

```
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/master/json/schema/fairtracks_experiment.schema.json
```

| Abstract            | Extensible | Status       | Identifiable | Custom Properties | Additional Properties | Defined In                                                             |
| ------------------- | ---------- | ------------ | ------------ | ----------------- | --------------------- | ---------------------------------------------------------------------- |
| Can be instantiated | No         | Experimental | No           | Forbidden         | Permitted             | [fairtracks_experiment.schema.json](../json/schema/fairtracks_experiment.schema.json) |

# Experiment Properties

| Property                                                      | Type       | Required     | Nullable | Defined by                                 |
| ------------------------------------------------------------- | ---------- | ------------ | -------- | ------------------------------------------ |
| [@schema](#schema)                                            | `const`    | Optional     | No       | Experiment (this schema)                   |
| [aggregated_from](#aggregated_from)                           | `string[]` | Optional     | No       | Experiment (this schema)                   |
| [compute_protocol_description](#compute_protocol_description) | `string`   | Optional     | No       | Experiment (this schema)                   |
| [gene_id](#gene_id)                                           | `string`   | Optional     | No       | Experiment (this schema)                   |
| [gene_product_type](#gene_product_type)                       | `object`   | Optional     | No       | Experiment (this schema)                   |
| [global_id](#global_id)                                       | `string`   | Optional     | No       | Experiment (this schema)                   |
| [lab_protocol_description](#lab_protocol_description)         | `string`   | Optional     | No       | Experiment (this schema)                   |
| [local_id](#local_id)                                         | `string`   | **Required** | No       | Experiment (this schema)                   |
| [macromolecular_structure](#macromolecular_structure)         | `object`   | Optional     | No       | Experiment (this schema)                   |
| [phenotype](#phenotype)                                       | reference  | Optional     | No       | Experiment (this schema)                   |
| [sample_ref](#sample_ref)                                     | `string`   | Optional     | No       | Experiment (this schema)                   |
| [sequence_feature](#sequence_feature)                         | `object`   | Optional     | No       | Experiment (this schema)                   |
| [study_ref](#study_ref)                                       | `string`   | **Required** | No       | Experiment (this schema)                   |
| [target](#target)                                             | `string`   | **Required** | No       | Experiment (this schema)                   |
| [target_details](#target_details)                             | `string`   | Optional     | No       | Experiment (this schema)                   |
| [technique](#technique)                                       | `object`   | **Required** | No       | Experiment (this schema)                   |
| `*`                                                           | any        | Additional   | Yes      | this schema _allows_ additional properties |

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
"https://raw.githubusercontent.com/fairtracks/fairtracks_standard/master/json/schema/fairtracks_experiment.schema.json"
```

## aggregated_from

References to external experiments used as basis for aggregated data generation (using global experiment identifiers,
resolvable by identifiers.org)

`aggregated_from`

- is optional
- type: `string[]`
- defined in this schema

### aggregated_from Type

Array type: `string[]`

All items must be of the type: `string`

## compute_protocol_description

Free-text description of computational protocol, or URL to such description

`compute_protocol_description`

- is optional
- type: `string`
- defined in this schema

### compute_protocol_description Type

`string`

### compute_protocol_description Example

```json
"https://www.encodeproject.org/documents/6f6351d4-9310-4a3b-a3c2-70ecac47b28b/@@download/attachment/ChIP-seq_Mapping_Pipeline_Overview.pdf"
```

## gene_id

HGNC identifier for gene targeted by the experiment (e.g., specific transcription factor used as ChIP-seq antibody).

`gene_id`

- is optional
- type: `string`
- defined in this schema
- namespace: hgnc
- matchType: canonical

### gene_id Type

`string`

## gene_product_type

Gene product type targeted by the experiment (e.g., miRNA)

`gene_product_type`

- is optional
- type: `object`
- defined in this schema

### gene_product_type Type

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
- ontology: http://purl.obolibrary.org/obo/ncit/releases/2019-09-09/ncit.owl
- ancestors: http://purl.obolibrary.org/obo/NCIT_C26548
- matchType: exact

##### term_id Type

`string`

All instances must conform to this regular expression (test examples
[here](<https://regexr.com/?expression=%5E(https%3F%7Cftp)%3A%2F%2F>)):

```regex
^(https?|ftp)://
```

#### term_label

Exact value according to the ontology used

`term_label`

- is optional
- type: `string`
- autogenerated: true

##### term_label Type

`string`

## global_id

Global experiment identifier, resolvable by identifiers.org

`global_id`

- is optional
- type: `string`
- defined in this schema
- format: curie
- namespace: geo,ega.experiment
- matchType: canonical

### global_id Type

`string`

### global_id Example

```json
"geo:GSE35583"
```

## lab_protocol_description

Free-text description of lab protocol, or URL to such description

`lab_protocol_description`

- is optional
- type: `string`
- defined in this schema

### lab_protocol_description Type

`string`

### lab_protocol_description Example

```json
"https://www.encodeproject.org/documents/8f459e88-6344-434f-8f9f-6375a9ff1880/@@download/attachment/CD20%2B_Stam_protocol.pdf"
```

## local_id

Submitter-local identifier (within investigation/hub) for experiment (in CURIE-format, if applicable)

`local_id`

- is **required**
- type: `string`
- defined in this schema
- unique: true

### local_id Type

`string`

### local_id Example

```json
"encode:ENCSR000DQP"
```

## macromolecular_structure

Macromolecular structure targeted by the experiment (e.g., chromatin strucure)

`macromolecular_structure`

- is optional
- type: `object`
- defined in this schema

### macromolecular_structure Type

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
- ontology: http://purl.obolibrary.org/obo/ncit/releases/2019-09-09/ncit.owl
- ancestors: http://purl.obolibrary.org/obo/NCIT_C14134
- matchType: exact

##### term_id Type

`string`

All instances must conform to this regular expression (test examples
[here](<https://regexr.com/?expression=%5E(https%3F%7Cftp)%3A%2F%2F>)):

```regex
^(https?|ftp)://
```

#### term_label

Exact value according to the ontology used

`term_label`

- is optional
- type: `string`
- autogenerated: true

##### term_label Type

`string`

## phenotype

Main phenotype (e.g. disease) connected to the sample

`phenotype`

- is optional
- type: reference
- defined in this schema

### phenotype Type

`object` with following properties:

| Property | Type | Required |
| -------- | ---- | -------- |


## sample_ref

Reference to the sample of the experiment (using the submitter-local identifier of the sample)

`sample_ref`

- is optional
- type: `string`
- defined in this schema
- format: foreign_ref
- foreignProperty:
  https://raw.githubusercontent.com/fairtracks/fairtracks_standard/master/json/schema/fairtracks_sample.schema.json#local_id

### sample_ref Type

`string`

### sample_ref Example

```json
"geo:GSM945229"
```

## sequence_feature

Sequence feature targeted by the experiment

`sequence_feature`

- is optional
- type: `object`
- defined in this schema

### sequence_feature Type

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
- ontology: https://raw.githubusercontent.com/The-Sequence-Ontology/SO-Ontologies/v3.1/releases/so-xp.owl/so.owl
- ancestors: http://purl.obolibrary.org/obo/SO_0000110
- matchType: exact

##### term_id Type

`string`

All instances must conform to this regular expression

```regex
^(https?|ftp)://
```

- test example:
  [http://purl.obolibrary.org/obo/SO_0001706](<https://regexr.com/?expression=%5E(https%3F%7Cftp)%3A%2F%2F&text=http%3A%2F%2Fpurl.obolibrary.org%2Fobo%2FSO_0001706>)

##### term_id Example

```json
http://purl.obolibrary.org/obo/SO_0001706
```

#### term_label

Exact value according to the ontology used

`term_label`

- is optional
- type: `string`
- autogenerated: true

##### term_label Type

`string`

##### term_label Example

```json
H3K4_trimethylation
```

## study_ref

Reference to the study that generated the sample (using the submitter-local identifier of the study)

`study_ref`

- is **required**
- type: `string`
- defined in this schema
- format: foreign_ref
- foreignProperty:
  https://raw.githubusercontent.com/fairtracks/fairtracks_standard/master/json/schema/fairtracks_study.schema.json#local_id

### study_ref Type

`string`

### study_ref Example

```json
"UW_ChipSeq"
```

## target

Main target of experiment, copied from 'sequence_feature', 'gene_id', 'gene_product', or 'macromolecular_structure'
(and adding 'target_detail'), according to 'technique'

`target`

- is **required**
- type: `string`
- defined in this schema
- autogenerated: true

### target Type

`string`

### target Example

```json
"H3K4_trimethylation"
```

## target_details

Important details about the target of the experiment (to be included in the 'target' property)

`target_details`

- is optional
- type: `string`
- defined in this schema

### target_details Type

`string`

## technique

Main technique used in experiment (e.g., laboratory, computational or statistical technique)

`technique`

- is **required**
- type: `object`
- defined in this schema

### technique Type

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
- ontology: http://purl.obolibrary.org/obo/obi/2018-08-27/obi.owl,http://edamontology.org/EDAM_1.21.owl
- ancestors: http://purl.obolibrary.org/obo/OBI_0000011,http://edamontology.org/operation_0004
- matchType: exact

##### term_id Type

`string`

All instances must conform to this regular expression

```regex
^(https?|ftp)://
```

- test example:
  [http://purl.obolibrary.org/obo/OBI_0002017](<https://regexr.com/?expression=%5E(https%3F%7Cftp)%3A%2F%2F&text=http%3A%2F%2Fpurl.obolibrary.org%2Fobo%2FOBI_0002017>)

##### term_id Example

```json
http://purl.obolibrary.org/obo/OBI_0002017
```

#### term_label

Exact value according to the ontology used

`term_label`

- is optional
- type: `string`
- autogenerated: true

##### term_label Type

`string`

##### term_label Example

```json
histone modification identification by ChIP-Seq assay
```

**Any** following _options_ needs to be fulfilled.

#### Option 1

#### Option 2
