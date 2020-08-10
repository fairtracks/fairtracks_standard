# Type of Condensed Track Data Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json#/properties/type_of_condensed_data
```

Type of condensed track data: Track data, by definition, is formed downstream of some data condensation process. However, the condensed data vary in form and content, technically speaking, and thus in their interpretation. Still, there is a limited set of common types of condensed track data which are able to describe the vast majority of track files


| Abstract            | Extensible | Status         | Identifiable            | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                                           |
| :------------------ | ---------- | -------------- | ----------------------- | :---------------- | --------------------- | ------------------- | ---------------------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | Unknown identifiability | Forbidden         | Allowed               | none                | [fairtracks_track.schema.json\*](../json/schema/fairtracks_track.schema.json "open original schema") |

## type_of_condensed_data Type

`string` ([Type of Condensed Track Data](fairtracks_track-properties-type-of-condensed-track-data.md))

## type_of_condensed_data Constraints

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

## type_of_condensed_data Examples

```json
"Narrow peaks"
```

```json
"Narrow peaks"
```

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
"Signal values (fold change)"
```

```json
"Signal values (p-value)"
```

```json
"Signal values (p-value)"
```
