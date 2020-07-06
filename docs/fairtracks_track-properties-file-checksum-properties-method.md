# Method Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_track.schema.json#/properties/checksum/properties/cs_method
```

Method of checksum generation


| Abstract            | Extensible | Status         | Identifiable            | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                                           |
| :------------------ | ---------- | -------------- | ----------------------- | :---------------- | --------------------- | ------------------- | ---------------------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | Unknown identifiability | Forbidden         | Allowed               | none                | [fairtracks_track.schema.json\*](../json/schema/fairtracks_track.schema.json "open original schema") |

## cs_method Type

`string` ([Method](fairtracks_track-properties-file-checksum-properties-method.md))

## cs_method Constraints

**enum**: the value of this property must be equal to one of the following values:

| Value       | Explanation |
| :---------- | ----------- |
| `"MD5"`     |             |
| `"SHA-256"` |             |

## cs_method Examples

```json
"MD5"
```

```json
"MD5"
```

```json
"MD5"
```

```json
"MD5"
```
