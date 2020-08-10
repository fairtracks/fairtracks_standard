# Genome Assembly ID Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json#/properties/assembly_id
```

Genome assembly identifier, resolvable by identifiers.org. Tracks should be annotated with the lowest version of the reference genome that contains all the sequences referenced by the track. Also, GCF (Refseq) ids should be preferred to GCA (Genbank) ids


| Abstract            | Extensible | Status         | Identifiable            | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                                           |
| :------------------ | ---------- | -------------- | ----------------------- | :---------------- | --------------------- | ------------------- | ---------------------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | Unknown identifiability | Forbidden         | Allowed               | none                | [fairtracks_track.schema.json\*](../json/schema/fairtracks_track.schema.json "open original schema") |

## assembly_id Type

`string` ([Genome Assembly ID](fairtracks_track-properties-genome-assembly-id.md))

## assembly_id Constraints

**unknown format**: the value of this string must follow the format: `curie`

## assembly_id Examples

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
