# Contact Schema

```
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/master/json/schema/fairtracks_contact.schema.json
```

| Abstract            | Extensible | Status       | Identifiable | Custom Properties | Additional Properties | Defined In                                                       |
| ------------------- | ---------- | ------------ | ------------ | ----------------- | --------------------- | ---------------------------------------------------------------- |
| Can be instantiated | No         | Experimental | No           | Forbidden         | Permitted             | [fairtracks_contact.schema.json](../json/schema/fairtracks_contact.schema.json) |

# Contact Properties

| Property           | Type     | Required     | Nullable | Defined by                                 |
| ------------------ | -------- | ------------ | -------- | ------------------------------------------ |
| [@schema](#schema) | `const`  | Optional     | No       | Contact (this schema)                      |
| [e-mail](#e-mail)  | `string` | Optional     | No       | Contact (this schema)                      |
| [name](#name)      | `string` | **Required** | No       | Contact (this schema)                      |
| [orcid](#orcid)    | `string` | Optional     | No       | Contact (this schema)                      |
| `*`                | any      | Additional   | Yes      | this schema _allows_ additional properties |

## @schema

The JSON Schema absolute URL. Used to link JSON data to a JSON schema. Must match the value of '\$id' in the linked
schema

`@schema`

- is optional
- type: `const`
- defined in this schema
- format: uri

The value of this property **must** be equal to:

```json
"https://raw.githubusercontent.com/fairtracks/fairtracks_standard/master/json/schema/fairtracks_contact.schema.json"
```

## e-mail

E-mail to contact person/organization

`e-mail`

- is optional
- type: `string`
- defined in this schema
- format: idn-email

### e-mail Type

`string`

- format: `idn-email` – international email address (according to [RFC 6531](https://tools.ietf.org/html/rfc6531))

### e-mail Example

```json
"encode-help@lists.stanford.edu"
```

## name

Name of contact person/organization

`name`

- is **required**
- type: `string`
- defined in this schema

### name Type

`string`

### name Example

```json
"ENCODE DCC"
```

## orcid

ORCID to contact person

`orcid`

- is optional
- type: `string`
- defined in this schema
- format: curie
- namespace: orcid
- matchType: canonical

### orcid Type

`string`

**Any** following _options_ needs to be fulfilled.

#### Option 1

#### Option 2
