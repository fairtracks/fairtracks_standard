# Schema URL Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json#/properties/@schema
```

The absolute URL of the 'current' version of the relevant FAIRtracks JSON schema within the same major version as the JSON document follows (which should ensure compatibility). Must match the value of '$id' in the linked schema


| Abstract            | Extensible | Status         | Identifiable            | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                                                     |
| :------------------ | ---------- | -------------- | ----------------------- | :---------------- | --------------------- | ------------------- | -------------------------------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | Unknown identifiability | Forbidden         | Allowed               | none                | [fairtracks_experiment.schema.json\*](../json/schema/fairtracks_experiment.schema.json "open original schema") |

## @schema Type

`string` ([Schema URL](fairtracks_experiment-properties-schema-url.md))

## @schema Constraints

**constant**: the value of this property must be equal to:

```json
"https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_experiment.schema.json"
```

**pattern**: the string must match the following regular expression: 

```regexp
^(https?|ftp)://
```

[try pattern](https://regexr.com/?expression=%5E(https%3F%7Cftp)%3A%2F%2F "try regular expression with regexr.com")

**URI**: the string must be a URI, according to [RFC 3986](https://tools.ietf.org/html/rfc4291 "check the specification")
