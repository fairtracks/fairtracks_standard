# Document Reference Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/collection_info/properties/document_ref
```

Reference to the FAIRtracks document containing the track collection (using the global identifier of the document)


| Abstract            | Extensible | Status         | Identifiable            | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                               |
| :------------------ | ---------- | -------------- | ----------------------- | :---------------- | --------------------- | ------------------- | ---------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | Unknown identifiability | Forbidden         | Allowed               | none                | [fairtracks.schema.json\*](../json/schema/fairtracks.schema.json "open original schema") |

## document_ref Type

`string` ([Document Reference](fairtracks-properties-track-collection-info-properties-document-reference.md))

## document_ref Constraints

**unknown format**: the value of this string must follow the format: `foreign_ref`

## document_ref Examples

```json
"doi:10.5281/zenodo.3984946"
```
