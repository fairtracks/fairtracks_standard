# Experiment Target Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/target
```

Main target of the experiment


| Abstract            | Extensible | Status         | Identifiable | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                                                     |
| :------------------ | ---------- | -------------- | ------------ | :---------------- | --------------------- | ------------------- | -------------------------------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | No           | Forbidden         | Allowed               | none                | [fairtracks_experiment.schema.json\*](../json/schema/fairtracks_experiment.schema.json "open original schema") |

## target Type

`object` ([Experiment Target](fairtracks_experiment-properties-experiment-target.md))

# Experiment Target Properties

| Property                                              | Type     | Required | Nullable       | Defined by                                                                                                                                                                                                                                                                                             |
| :---------------------------------------------------- | -------- | -------- | -------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [sequence_feature](#sequence_feature)                 | `object` | Optional | cannot be null | [Experiment](fairtracks_experiment-properties-experiment-target-properties-target-sequence-feature.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/target/properties/sequence_feature")                 |
| [gene_id](#gene_id)                                   | `string` | Optional | cannot be null | [Experiment](fairtracks_experiment-properties-experiment-target-properties-target-gene.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/target/properties/gene_id")                                      |
| [gene_product_type](#gene_product_type)               | `object` | Optional | cannot be null | [Experiment](fairtracks_experiment-properties-experiment-target-properties-target-gene-product-type.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/target/properties/gene_product_type")               |
| [macromolecular_structure](#macromolecular_structure) | `object` | Optional | cannot be null | [Experiment](fairtracks_experiment-properties-experiment-target-properties-target-macromolecular-structure.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/target/properties/macromolecular_structure") |
| [phenotype](#phenotype)                               | `object` | Optional | cannot be null | [Experiment](fairtracks_experiment-properties-experiment-target-properties-phenotype.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_phenotype.schema.json#/properties/target/properties/phenotype")                                       |
| [target_details](#target_details)                     | `string` | Optional | cannot be null | [Experiment](fairtracks_experiment-properties-experiment-target-properties-target-details.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/target/properties/target_details")                            |
| [summary](#summary)                                   | `string` | Optional | cannot be null | [Experiment](fairtracks_experiment-properties-experiment-target-properties-experiment-target-summary.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/target/properties/summary")                        |

## sequence_feature

Sequence feature targeted by the experiment


`sequence_feature`

-   is optional
-   Type: `object` ([Target: Sequence Feature](fairtracks_experiment-properties-experiment-target-properties-target-sequence-feature.md))
-   cannot be null
-   defined in: [Experiment](fairtracks_experiment-properties-experiment-target-properties-target-sequence-feature.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/target/properties/sequence_feature")

### sequence_feature Type

`object` ([Target: Sequence Feature](fairtracks_experiment-properties-experiment-target-properties-target-sequence-feature.md))

## gene_id

HGNC identifier for gene targeted by the experiment (e.g., specific transcription factor used as ChIP-seq antibody).


`gene_id`

-   is optional
-   Type: `string` ([Target: Gene](fairtracks_experiment-properties-experiment-target-properties-target-gene.md))
-   cannot be null
-   defined in: [Experiment](fairtracks_experiment-properties-experiment-target-properties-target-gene.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/target/properties/gene_id")
-   namespace: "hgnc"
-   matchType: "canonical"

### gene_id Type

`string` ([Target: Gene](fairtracks_experiment-properties-experiment-target-properties-target-gene.md))

## gene_product_type

Gene product type targeted by the experiment (e.g., miRNA)


`gene_product_type`

-   is optional
-   Type: `object` ([Target: Gene Product Type](fairtracks_experiment-properties-experiment-target-properties-target-gene-product-type.md))
-   cannot be null
-   defined in: [Experiment](fairtracks_experiment-properties-experiment-target-properties-target-gene-product-type.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/target/properties/gene_product_type")

### gene_product_type Type

`object` ([Target: Gene Product Type](fairtracks_experiment-properties-experiment-target-properties-target-gene-product-type.md))

## macromolecular_structure

Macromolecular structure targeted by the experiment (e.g., chromatin strucure)


`macromolecular_structure`

-   is optional
-   Type: `object` ([Target: Macromolecular Structure](fairtracks_experiment-properties-experiment-target-properties-target-macromolecular-structure.md))
-   cannot be null
-   defined in: [Experiment](fairtracks_experiment-properties-experiment-target-properties-target-macromolecular-structure.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/target/properties/macromolecular_structure")

### macromolecular_structure Type

`object` ([Target: Macromolecular Structure](fairtracks_experiment-properties-experiment-target-properties-target-macromolecular-structure.md))

## phenotype

Main phenotype (e.g. disease) connected to the sample


> JSON signature: f807ce206cb0c89510c5708a328ddc4f2b1427352585a6aa87f68b73756a3e61
>

`phenotype`

-   is optional
-   Type: `object` ([Phenotype](fairtracks_experiment-properties-experiment-target-properties-phenotype.md))
-   cannot be null
-   defined in: [Experiment](fairtracks_experiment-properties-experiment-target-properties-phenotype.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_phenotype.schema.json#/properties/target/properties/phenotype")

### phenotype Type

`object` ([Phenotype](fairtracks_experiment-properties-experiment-target-properties-phenotype.md))

## target_details

Important details about the target of the experiment (to be included in the 'target' property)


`target_details`

-   is optional
-   Type: `string` ([Target Details](fairtracks_experiment-properties-experiment-target-properties-target-details.md))
-   cannot be null
-   defined in: [Experiment](fairtracks_experiment-properties-experiment-target-properties-target-details.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/target/properties/target_details")

### target_details Type

`string` ([Target Details](fairtracks_experiment-properties-experiment-target-properties-target-details.md))

## summary

Summary of 'target', copied from 'sequence_feature', 'gene_id', 'gene_product', or 'macromolecular_structure' (and adding 'target_detail'), according to 'technique'


`summary`

-   is optional
-   Type: `string` ([Experiment Target (Summary)](fairtracks_experiment-properties-experiment-target-properties-experiment-target-summary.md))
-   cannot be null
-   defined in: [Experiment](fairtracks_experiment-properties-experiment-target-properties-experiment-target-summary.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/target/properties/summary")
-   autogenerated: true

### summary Type

`string` ([Experiment Target (Summary)](fairtracks_experiment-properties-experiment-target-properties-experiment-target-summary.md))

### summary Examples

```json
"H3K4_trimethylation"
```
