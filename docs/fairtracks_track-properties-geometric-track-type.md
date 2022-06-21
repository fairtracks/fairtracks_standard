# Geometric Track Type Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_track.schema.json#/properties/geometric_track_type
```

Geometric type of track, according to the delineation of tracks into one of fifteen logical track types based upon their core informational properties (see doi:10.1186/1471-2105-12-494) 


| Abstract            | Extensible | Status         | Identifiable            | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                                           |
| :------------------ | ---------- | -------------- | ----------------------- | :---------------- | --------------------- | ------------------- | ---------------------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | Unknown identifiability | Forbidden         | Allowed               | none                | [fairtracks_track.schema.json\*](../json/schema/fairtracks_track.schema.json "open original schema") |

## geometric_track_type Type

`string` ([Geometric Track Type](fairtracks_track-properties-geometric-track-type.md))

## geometric_track_type Constraints

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

## geometric_track_type Examples

```json
"Segments"
```

```json
"Segments"
```

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

```json
"Step function"
```

```json
"Step function"
```
