# Contact Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_contact.schema.json
```




> JSON signature: daba8d50c607720756379d7846d10565cbc1b38101e8014311927710541ba83b
>

| Abstract            | Extensible | Status         | Identifiable | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                                             |
| :------------------ | ---------- | -------------- | ------------ | :---------------- | --------------------- | ------------------- | ------------------------------------------------------------------------------------------------------ |
| Can be instantiated | No         | Unknown status | No           | Forbidden         | Allowed               | none                | [fairtracks_contact.schema.json](../json/schema/fairtracks_contact.schema.json "open original schema") |

## Contact Type

`object` ([Contact](fairtracks_contact.md))

any of

-   [Untitled undefined type in Contact](fairtracks_contact-anyof-0.md "check type definition")
-   [Untitled undefined type in Contact](fairtracks_contact-anyof-1.md "check type definition")

# Contact Properties

| Property              | Type     | Required | Nullable       | Defined by                                                                                                                                                                                           |
| :-------------------- | -------- | -------- | -------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [@schema](#@schema)   | `string` | Optional | cannot be null | [Contact](fairtracks_contact-properties-schema.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_contact.schema.json#/properties/@schema") |
| [name](#name)         | `string` | Required | cannot be null | [Contact](fairtracks_contact-properties-name.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_contact.schema.json#/properties/name")      |
| [e-mail](#e-mail)     | `string` | Optional | cannot be null | [Contact](fairtracks_contact-properties-e-mail.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_contact.schema.json#/properties/e-mail")  |
| [orcid](#orcid)       | `string` | Optional | cannot be null | [Contact](fairtracks_contact-properties-orcid.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_contact.schema.json#/properties/orcid")    |
| Additional Properties | Any      | Optional | can be null    |                                                                                                                                                                                                      |

## @schema

The JSON Schema absolute URL. Used to link JSON data to a JSON schema. Must match the value of '$id' in the linked schema


`@schema`

-   is optional
-   Type: `string`
-   cannot be null
-   defined in: [Contact](fairtracks_contact-properties-schema.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_contact.schema.json#/properties/@schema")

### @schema Type

`string`

### @schema Constraints

**constant**: the value of this property must be equal to:

```json
"https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_contact.schema.json"
```

**pattern**: the string must match the following regular expression: 

```regexp
^(https?|ftp)://
```

[try pattern](https://regexr.com/?expression=%5E(https%3F%7Cftp)%3A%2F%2F "try regular expression with regexr.com")

**URI**: the string must be a URI, according to [RFC 3986](https://tools.ietf.org/html/rfc4291 "check the specification")

## name

Name of contact person/organization


`name`

-   is required
-   Type: `string`
-   cannot be null
-   defined in: [Contact](fairtracks_contact-properties-name.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_contact.schema.json#/properties/name")

### name Type

`string`

### name Examples

```json
"ENCODE DCC"
```

## e-mail

E-mail to contact person/organization


`e-mail`

-   is optional
-   Type: `string`
-   cannot be null
-   defined in: [Contact](fairtracks_contact-properties-e-mail.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_contact.schema.json#/properties/e-mail")

### e-mail Type

`string`

### e-mail Constraints

**(international) email**: the string must be an (international) email address, according to [RFC 6531](https://tools.ietf.org/html/rfc6531 "check the specification")

### e-mail Examples

```json
"encode-help@lists.stanford.edu"
```

## orcid

ORCID to contact person


`orcid`

-   is optional
-   Type: `string`
-   cannot be null
-   defined in: [Contact](fairtracks_contact-properties-orcid.md "https&#x3A;//raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks_contact.schema.json#/properties/orcid")

### orcid Type

`string`

### orcid Constraints

**unknown format**: the value of this string must follow the format: `curie`

## Additional Properties

Additional properties are allowed and do not have to follow a specific schema
