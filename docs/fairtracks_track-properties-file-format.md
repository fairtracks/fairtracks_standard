# File Format Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_track.schema.json#/properties/file_format
```

File format of the track data file


| Abstract            | Extensible | Status         | Identifiable | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                                           |
| :------------------ | ---------- | -------------- | ------------ | :---------------- | --------------------- | ------------------- | ---------------------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | No           | Forbidden         | Allowed               | none                | [fairtracks_track.schema.json\*](../json/schema/fairtracks_track.schema.json "open original schema") |

## file_format Type

`object` ([File Format](fairtracks_track-properties-file-format.md))

# File Format Properties

| Property                  | Type     | Required | Nullable       | Defined by                                                                                                                                                                                                                                          |
| :------------------------ | -------- | -------- | -------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [term_id](#term_id)       | `string` | Required | cannot be null | [Track](fairtracks_track-properties-file-format-properties-term-id.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_track.schema.json#/properties/file_format/properties/term_id")       |
| [term_label](#term_label) | `string` | Optional | cannot be null | [Track](fairtracks_track-properties-file-format-properties-term-label.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_track.schema.json#/properties/file_format/properties/term_label") |

## term_id

URL linking to an ontology term


`term_id`

-   is required
-   Type: `string` ([Term ID](fairtracks_track-properties-file-format-properties-term-id.md))
-   cannot be null
-   defined in: [Track](fairtracks_track-properties-file-format-properties-term-id.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_track.schema.json#/properties/file_format/properties/term_id")
-   format: "term"
-   ontology: "http://edamontology.org/EDAM.owl"
-   matchType: "exact"

### term_id Type

`string` ([Term ID](fairtracks_track-properties-file-format-properties-term-id.md))

### term_id Constraints

**pattern**: the string must match the following regular expression: 

```regexp
^(https?|ftp)://
```

[try pattern](https://regexr.com/?expression=%5E(https%3F%7Cftp)%3A%2F%2F "try regular expression with regexr.com")

**unknown format**: the value of this string must follow the format: `term`

### term_id Examples

```json
"http://edamontology.org/format_3613"
```

```json
"http://edamontology.org/format_3613"
```

```json
"http://edamontology.org/format_3004"
```

```json
"http://edamontology.org/format_3004"
```

```json
"http://edamontology.org/format_3006"
```

```json
"http://edamontology.org/format_3006"
```

```json
"http://edamontology.org/format_3006"
```

```json
"http://edamontology.org/format_3006"
```

## term_label

Exact value according to the ontology used


`term_label`

-   is optional
-   Type: `string` ([Term Label](fairtracks_track-properties-file-format-properties-term-label.md))
-   cannot be null
-   defined in: [Track](fairtracks_track-properties-file-format-properties-term-label.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_track.schema.json#/properties/file_format/properties/term_label")
-   augmented: true

### term_label Type

`string` ([Term Label](fairtracks_track-properties-file-format-properties-term-label.md))

### term_label Examples

```json
"ENCODE narrow peak format"
```

```json
"ENCODE narrow peak format"
```

```json
"bigBed"
```

```json
"bigBed"
```

```json
"bigWig"
```

```json
"bigWig"
```

```json
"bigWig"
```

```json
"bigWig"
```
