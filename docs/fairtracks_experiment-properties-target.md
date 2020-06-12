# Untitled object in Experiment Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/target
```

Main target of the experiment


| Abstract            | Extensible | Status         | Identifiable | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                                                     |
| :------------------ | ---------- | -------------- | ------------ | :---------------- | --------------------- | ------------------- | -------------------------------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | No           | Forbidden         | Allowed               | none                | [fairtracks_experiment.schema.json\*](../json/schema/fairtracks_experiment.schema.json "open original schema") |

## target Type

`object` ([Details](fairtracks_experiment-properties-target.md))

# undefined Properties

| Property                                              | Type     | Required | Nullable       | Defined by                                                                                                                                                                                                                                                                           |
| :---------------------------------------------------- | -------- | -------- | -------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [sequence_feature](#sequence_feature)                 | `object` | Optional | cannot be null | [Experiment](fairtracks_experiment-properties-target-properties-sequence_feature.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/target/properties/sequence_feature")                 |
| [gene_id](#gene_id)                                   | `string` | Optional | cannot be null | [Experiment](fairtracks_experiment-properties-target-properties-gene_id.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/target/properties/gene_id")                                   |
| [gene_product_type](#gene_product_type)               | `object` | Optional | cannot be null | [Experiment](fairtracks_experiment-properties-target-properties-gene_product_type.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/target/properties/gene_product_type")               |
| [macromolecular_structure](#macromolecular_structure) | `object` | Optional | cannot be null | [Experiment](fairtracks_experiment-properties-target-properties-macromolecular_structure.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/target/properties/macromolecular_structure") |
| [phenotype](#phenotype)                               | `object` | Optional | cannot be null | [Experiment](fairtracks_experiment-properties-target-properties-phenotype.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_phenotype.schema.json#/properties/target/properties/phenotype")                                |
| [target_details](#target_details)                     | `string` | Optional | cannot be null | [Experiment](fairtracks_experiment-properties-target-properties-target_details.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/target/properties/target_details")                     |
| [summary](#summary)                                   | `string` | Optional | cannot be null | [Experiment](fairtracks_experiment-properties-target-properties-summary.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/target/properties/summary")                                   |

## sequence_feature

Sequence feature targeted by the experiment


`sequence_feature`

-   is optional
-   Type: `object` ([Details](fairtracks_experiment-properties-target-properties-sequence_feature.md))
-   cannot be null
-   defined in: [Experiment](fairtracks_experiment-properties-target-properties-sequence_feature.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/target/properties/sequence_feature")

### sequence_feature Type

`object` ([Details](fairtracks_experiment-properties-target-properties-sequence_feature.md))

## gene_id

HGNC identifier for gene targeted by the experiment (e.g., specific transcription factor used as ChIP-seq antibody).


`gene_id`

-   is optional
-   Type: `string`
-   cannot be null
-   defined in: [Experiment](fairtracks_experiment-properties-target-properties-gene_id.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/target/properties/gene_id")
-   namespace: "hgnc"
-   matchType: "canonical"

### gene_id Type

`string`

## gene_product_type

Gene product type targeted by the experiment (e.g., miRNA)


`gene_product_type`

-   is optional
-   Type: `object` ([Details](fairtracks_experiment-properties-target-properties-gene_product_type.md))
-   cannot be null
-   defined in: [Experiment](fairtracks_experiment-properties-target-properties-gene_product_type.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/target/properties/gene_product_type")

### gene_product_type Type

`object` ([Details](fairtracks_experiment-properties-target-properties-gene_product_type.md))

## macromolecular_structure

Macromolecular structure targeted by the experiment (e.g., chromatin strucure)


`macromolecular_structure`

-   is optional
-   Type: `object` ([Details](fairtracks_experiment-properties-target-properties-macromolecular_structure.md))
-   cannot be null
-   defined in: [Experiment](fairtracks_experiment-properties-target-properties-macromolecular_structure.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/target/properties/macromolecular_structure")

### macromolecular_structure Type

`object` ([Details](fairtracks_experiment-properties-target-properties-macromolecular_structure.md))

## phenotype

Main phenotype (e.g. disease) connected to the sample


> JSON signature: c56584aa5716fb0730026a5f92f0d126930895f063049ca751e3aa80df6bd4d8
>

`phenotype`

-   is optional
-   Type: `object` ([Phenotype](fairtracks_experiment-properties-target-properties-phenotype.md))
-   cannot be null
-   defined in: [Experiment](fairtracks_experiment-properties-target-properties-phenotype.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_phenotype.schema.json#/properties/target/properties/phenotype")

### phenotype Type

`object` ([Phenotype](fairtracks_experiment-properties-target-properties-phenotype.md))

## target_details

Important details about the target of the experiment (to be included in the 'target' property)


`target_details`

-   is optional
-   Type: `string`
-   cannot be null
-   defined in: [Experiment](fairtracks_experiment-properties-target-properties-target_details.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/target/properties/target_details")

### target_details Type

`string`

## summary

Summary of 'target', copied from 'sequence_feature', 'gene_id', 'gene_product', or 'macromolecular_structure' (and adding 'target_detail'), according to 'technique'


`summary`

-   is optional
-   Type: `string`
-   cannot be null
-   defined in: [Experiment](fairtracks_experiment-properties-target-properties-summary.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/target/properties/summary")
-   autogenerated: true

### summary Type

`string`

### summary Examples

```json
"H3K4_trimethylation"
```
