# File URL Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_track.schema.json#/properties/file_url
```

A URL to the track data file


| Abstract            | Extensible | Status         | Identifiable            | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                                           |
| :------------------ | ---------- | -------------- | ----------------------- | :---------------- | --------------------- | ------------------- | ---------------------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | Unknown identifiability | Forbidden         | Allowed               | none                | [fairtracks_track.schema.json\*](../json/schema/fairtracks_track.schema.json "open original schema") |

## file_url Type

`string` ([File URL](fairtracks_track-properties-file-url.md))

## file_url Constraints

**pattern**: the string must match the following regular expression: 

```regexp
^(https?|ftp|rsync)://
```

[try pattern](https://regexr.com/?expression=%5E(https%3F%7Cftp%7Crsync)%3A%2F%2F "try regular expression with regexr.com")

**URI**: the string must be a URI, according to [RFC 3986](https://tools.ietf.org/html/rfc4291 "check the specification")

## file_url Examples

```json
"https://www.encodeproject.org/files/ENCFF625ZYB/@@download/ENCFF625ZYB.bed.gz"
```

```json
"https://www.encodeproject.org/files/ENCFF490NHU/@@download/ENCFF490NHU.bed.gz"
```

```json
"https://www.encodeproject.org/files/ENCFF718EPO/@@download/ENCFF718EPO.bigBed"
```

```json
"https://www.encodeproject.org/files/ENCFF447OHZ/@@download/ENCFF447OHZ.bigBed"
```

```json
"https://www.encodeproject.org/files/ENCFF717PIO/@@download/ENCFF717PIO.bigWig"
```

```json
"https://www.encodeproject.org/files/ENCFF615CNJ/@@download/ENCFF615CNJ.bigWig"
```

```json
"https://www.encodeproject.org/files/ENCFF955LOC/@@download/ENCFF955LOC.bigWig"
```

```json
"https://www.encodeproject.org/files/ENCFF492CEQ/@@download/ENCFF492CEQ.bigWig"
```
