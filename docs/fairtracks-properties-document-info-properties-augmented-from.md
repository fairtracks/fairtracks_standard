# Augmented From Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/document/properties/augmented_from
```

Information about the non-augmented "parent" FAIRtracks document used to generate the augmented FAIRtracks document. Only relevant if 'has_augmented_data' is true


| Abstract            | Extensible | Status         | Identifiable | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                               |
| :------------------ | ---------- | -------------- | ------------ | :---------------- | --------------------- | ------------------- | ---------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | No           | Forbidden         | Allowed               | none                | [fairtracks.schema.json\*](../json/schema/fairtracks.schema.json "open original schema") |

## augmented_from Type

`object` ([Augmented From](fairtracks-properties-document-info-properties-augmented-from.md))

# Augmented From Properties

| Property                                          | Type     | Required | Nullable       | Defined by                                                                                                                                                                                                                                                                                                                |
| :------------------------------------------------ | -------- | -------- | -------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| [minimal_doc_ref](#minimal_doc_ref)               | `string` | Required | cannot be null | [FAIRtracks](fairtracks-properties-document-info-properties-augmented-from-properties-minimal-document-reference.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/document/properties/augmented_from/properties/minimal_doc_ref")      |
| [minimal_doc_version_id](#minimal_doc_version_id) | `string` | Required | cannot be null | [FAIRtracks](fairtracks-properties-document-info-properties-augmented-from-properties-minimal-document-version.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/document/properties/augmented_from/properties/minimal_doc_version_id") |

## minimal_doc_ref

Reference to the minimal (i.e. non-augmented) FAIRtracks document used to generate the present augmented FAIRtracks document (using the global identifier of the document)


`minimal_doc_ref`

-   is required
-   Type: `string` ([Minimal Document Reference](fairtracks-properties-document-info-properties-augmented-from-properties-minimal-document-reference.md))
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-document-info-properties-augmented-from-properties-minimal-document-reference.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/document/properties/augmented_from/properties/minimal_doc_ref")
-   namespace: "doi"

### minimal_doc_ref Type

`string` ([Minimal Document Reference](fairtracks-properties-document-info-properties-augmented-from-properties-minimal-document-reference.md))

## minimal_doc_version_id

Version string (preferably in CURIE form) that uniquely identifies the exact version (among all document versions matching "minimal_doc_ref") of the minimal FAIRtracks document used to generate the present augmented FAIRtracks document 


`minimal_doc_version_id`

-   is required
-   Type: `string` ([Minimal Document Version](fairtracks-properties-document-info-properties-augmented-from-properties-minimal-document-version.md))
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-document-info-properties-augmented-from-properties-minimal-document-version.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/document/properties/augmented_from/properties/minimal_doc_version_id")

### minimal_doc_version_id Type

`string` ([Minimal Document Version](fairtracks-properties-document-info-properties-augmented-from-properties-minimal-document-version.md))
