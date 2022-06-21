# Source Repo URL Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v2/current/json/schema/fairtracks.schema.json#/properties/collection_info/properties/source_repo_url
```

URL to the track repository containing the collection (e.g., the Track Hub Registry)


| Abstract            | Extensible | Status         | Identifiable            | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                               |
| :------------------ | ---------- | -------------- | ----------------------- | :---------------- | --------------------- | ------------------- | ---------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | Unknown identifiability | Forbidden         | Allowed               | none                | [fairtracks.schema.json\*](../json/schema/fairtracks.schema.json "open original schema") |

## source_repo_url Type

`string` ([Source Repo URL](fairtracks-properties-track-collection-info-properties-source-repo-url.md))

## source_repo_url Constraints

**pattern**: the string must match the following regular expression: 

```regexp
^(https?|ftp)://
```

[try pattern](https://regexr.com/?expression=%5E(https%3F%7Cftp)%3A%2F%2F "try regular expression with regexr.com")

**URI**: the string must be a URI, according to [RFC 3986](https://tools.ietf.org/html/rfc4291 "check the specification")

## source_repo_url Examples

```json
"https://www.encodeproject.org/search"
```
