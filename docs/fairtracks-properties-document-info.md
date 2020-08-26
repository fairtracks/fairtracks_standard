# Document info Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/document
```

Information about the present FAIRtracks document (i.e. a JSON document that validates against any supported release of this JSON schema)


| Abstract            | Extensible | Status         | Identifiable | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                               |
| :------------------ | ---------- | -------------- | ------------ | :---------------- | --------------------- | ------------------- | ---------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | No           | Forbidden         | Allowed               | none                | [fairtracks.schema.json\*](../json/schema/fairtracks.schema.json "open original schema") |

## document Type

`object` ([Document info](fairtracks-properties-document-info.md))

all of

-   [Untitled undefined type in FAIRtracks](fairtracks-properties-document-info-allof-0.md "check type definition")

# Document info Properties

| Property                                          | Type      | Required | Nullable       | Defined by                                                                                                                                                                                                                                                               |
| :------------------------------------------------ | --------- | -------- | -------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [global_id](#global_id)                           | `string`  | Required | cannot be null | [FAIRtracks](fairtracks-properties-document-info-properties-global-id.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/document/properties/global_id")                                |
| [version_id](#version_id)                         | `string`  | Required | cannot be null | [FAIRtracks](fairtracks-properties-document-info-properties-version-id.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/document/properties/version_id")                              |
| [version_date](#version_date)                     | `string`  | Required | cannot be null | [FAIRtracks](fairtracks-properties-document-info-properties-version-date.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/document/properties/version_date")                          |
| [json_signature](#json_signature)                 | `string`  | Optional | cannot be null | [FAIRtracks](fairtracks-properties-document-info-properties-json-signature.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/document/properties/json_signature")                      |
| [ontology_versions](#ontology_versions)           | `object`  | Required | cannot be null | [FAIRtracks](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/document/properties/ontology_versions")  |
| [has_augmented_metadata](#has_augmented_metadata) | `boolean` | Required | cannot be null | [FAIRtracks](fairtracks-properties-document-info-properties-contains-augmented-metadata.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/document/properties/has_augmented_metadata") |
| [augmented_from](#augmented_from)                 | `object`  | Optional | cannot be null | [FAIRtracks](fairtracks-properties-document-info-properties-augmented-from.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/document/properties/augmented_from")                      |

## global_id

Global identifier for the FAIRtracks document, resolvable by identifiers.org 


`global_id`

-   is required
-   Type: `string` ([Global ID](fairtracks-properties-document-info-properties-global-id.md))
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-document-info-properties-global-id.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/document/properties/global_id")
-   namespace: "doi"

### global_id Type

`string` ([Global ID](fairtracks-properties-document-info-properties-global-id.md))

### global_id Examples

```json
"doi:10.5281/zenodo.3984946"
```

## version_id

Version string (preferably in CURIE form) that uniquely and exactly identifies the present version of the FAIRtracks document among all versions with the same "global_id" identifier


`version_id`

-   is required
-   Type: `string` ([Version ID](fairtracks-properties-document-info-properties-version-id.md))
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-document-info-properties-version-id.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/document/properties/version_id")

### version_id Type

`string` ([Version ID](fairtracks-properties-document-info-properties-version-id.md))

### version_id Examples

```json
"doi:10.5281/zenodo.3984947"
```

## version_date

Time and date of the last modification of the present version of the FAIRtracks document


`version_date`

-   is required
-   Type: `string` ([Version Date](fairtracks-properties-document-info-properties-version-date.md))
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-document-info-properties-version-date.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/document/properties/version_date")
-   format: "date-time"

### version_date Type

`string` ([Version Date](fairtracks-properties-document-info-properties-version-date.md))

### version_date Constraints

**date time**: the string must be a date time string, according to [RFC 3339, section 5.6](https://tools.ietf.org/html/rfc3339 "check the specification")

### version_date Examples

```json
"2020-07-07T19:02:59Z"
```

## json_signature

Unique signature derived from the JSON contents of the FAIRtracks document, as defined by the "scripts/python/json_signature.py" module in the FAIRtracks GitHub repo (<https://github.com/fairtracks/fairtracks_standard>).


`json_signature`

-   is optional
-   Type: `string` ([JSON Signature](fairtracks-properties-document-info-properties-json-signature.md))
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-document-info-properties-json-signature.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/document/properties/json_signature")

### json_signature Type

`string` ([JSON Signature](fairtracks-properties-document-info-properties-json-signature.md))

### json_signature Examples

```json
"9e9fa2d46112ada6c64c161c9587613cd778ec042ba65740265da1a3e8a34224"
```

## ontology_versions

URLs to the version of the ontologies used in the FAIRtracks document


`ontology_versions`

-   is required
-   Type: `object` ([Version URLs to Ontologies used](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used.md))
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/document/properties/ontology_versions")

### ontology_versions Type

`object` ([Version URLs to Ontologies used](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used.md))

## has_augmented_metadata

Set to true if the metadata properties with augmented=true is set in this document, as returned by the fairtracks_augment service


`has_augmented_metadata`

-   is required
-   Type: `boolean` ([Contains Augmented Metadata](fairtracks-properties-document-info-properties-contains-augmented-metadata.md))
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-document-info-properties-contains-augmented-metadata.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/document/properties/has_augmented_metadata")

### has_augmented_metadata Type

`boolean` ([Contains Augmented Metadata](fairtracks-properties-document-info-properties-contains-augmented-metadata.md))

### has_augmented_metadata Examples

```json
true
```

## augmented_from

Information about the non-augmented "parent" FAIRtracks document used to generate the augmented FAIRtracks document. Only relevant if 'has_augmented_data' is true


`augmented_from`

-   is optional
-   Type: `object` ([Augmented From](fairtracks-properties-document-info-properties-augmented-from.md))
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-document-info-properties-augmented-from.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/document/properties/augmented_from")

### augmented_from Type

`object` ([Augmented From](fairtracks-properties-document-info-properties-augmented-from.md))
