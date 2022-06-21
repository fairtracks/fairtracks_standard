# File Checksum Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_track.schema.json#/properties/checksum
```




| Abstract            | Extensible | Status         | Identifiable | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                                           |
| :------------------ | ---------- | -------------- | ------------ | :---------------- | --------------------- | ------------------- | ---------------------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | No           | Forbidden         | Allowed               | none                | [fairtracks_track.schema.json\*](../json/schema/fairtracks_track.schema.json "open original schema") |

## checksum Type

`object` ([File Checksum](fairtracks_track-properties-file-checksum.md))

# File Checksum Properties

| Property                | Type     | Required | Nullable       | Defined by                                                                                                                                                                                                                                    |
| :---------------------- | -------- | -------- | -------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [cs_method](#cs_method) | `string` | Required | cannot be null | [Track](fairtracks_track-properties-file-checksum-properties-method.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_track.schema.json#/properties/checksum/properties/cs_method") |
| [cs_hash](#cs_hash)     | `string` | Required | cannot be null | [Track](fairtracks_track-properties-file-checksum-properties-hash.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_track.schema.json#/properties/checksum/properties/cs_hash")     |

## cs_method

Method of checksum generation


`cs_method`

-   is required
-   Type: `string` ([Method](fairtracks_track-properties-file-checksum-properties-method.md))
-   cannot be null
-   defined in: [Track](fairtracks_track-properties-file-checksum-properties-method.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_track.schema.json#/properties/checksum/properties/cs_method")

### cs_method Type

`string` ([Method](fairtracks_track-properties-file-checksum-properties-method.md))

### cs_method Constraints

**enum**: the value of this property must be equal to one of the following values:

| Value       | Explanation |
| :---------- | ----------- |
| `"MD5"`     |             |
| `"SHA-256"` |             |

### cs_method Examples

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

## cs_hash

Checksum of track file, using the method described in cs_method


`cs_hash`

-   is required
-   Type: `string` ([Hash](fairtracks_track-properties-file-checksum-properties-hash.md))
-   cannot be null
-   defined in: [Track](fairtracks_track-properties-file-checksum-properties-hash.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks_track.schema.json#/properties/checksum/properties/cs_hash")

### cs_hash Type

`string` ([Hash](fairtracks_track-properties-file-checksum-properties-hash.md))

### cs_hash Examples

```json
"0ab98dbd2a2193ab3e09df030ea4f934"
```

```json
" 3303226e0604d22900771d965fb7a3d2"
```

```json
"6d2c6c99a7407f1c49ab163e41d9b575"
```

```json
" aaa951221e1fbb62282bc73060de0339"
```

```json
"550ae974bf94f1deb1676613ab24a5da"
```

```json
" a1b4ae6b4eddd8fbd6edd6bf535d2eb5"
```

```json
"942ea96e86313d4338cf3fd020882c4d"
```

```json
" 51a548338912eef85b72aa21a9a2a555"
```
