# Untitled object in FAIRtracks Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions
```

URLs to the version of the ontologies used in the JSON document


| Abstract            | Extensible | Status         | Identifiable | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                               |
| :------------------ | ---------- | -------------- | ------------ | :---------------- | --------------------- | ------------------- | ---------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | No           | Forbidden         | Allowed               | none                | [fairtracks.schema.json\*](../json/schema/fairtracks.schema.json "open original schema") |

## doc_ontology_versions Type

`object` ([Details](fairtracks-properties-doc_info-properties-doc_ontology_versions.md))

# undefined Properties

| Property                                                                                | Type     | Required | Nullable       | Defined by                                                                                                                                                                                                                                                                                                                                  |
| :-------------------------------------------------------------------------------------- | -------- | -------- | -------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| [http://edamontology.org/EDAM.owl](#http://edamontology.org/EDAM.owl)                   | `string` | Required | cannot be null | [FAIRtracks](fairtracks-properties-doc_info-properties-doc_ontology_versions-properties-edamowl.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions/properties/http://edamontology.org/EDAM.owl")            |
| [http://purl.obolibrary.org/obo/cl.owl](#http://purl.obolibrary.org/obo/cl.owl)         | `string` | Required | cannot be null | [FAIRtracks](fairtracks-properties-doc_info-properties-doc_ontology_versions-properties-clowl.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions/properties/http://purl.obolibrary.org/obo/cl.owl")         |
| [http://www.ebi.ac.uk/efo/efo.owl](#http://www.ebi.ac.uk/efo/efo.owl)                   | `string` | Required | cannot be null | [FAIRtracks](fairtracks-properties-doc_info-properties-doc_ontology_versions-properties-efoowl.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions/properties/http://www.ebi.ac.uk/efo/efo.owl")             |
| [http://purl.obolibrary.org/obo/ncit.owl](#http://purl.obolibrary.org/obo/ncit.owl)     | `string` | Required | cannot be null | [FAIRtracks](fairtracks-properties-doc_info-properties-doc_ontology_versions-properties-ncitowl.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions/properties/http://purl.obolibrary.org/obo/ncit.owl")     |
| [http://purl.obolibrary.org/obo/obi.owl](#http://purl.obolibrary.org/obo/obi.owl)       | `string` | Required | cannot be null | [FAIRtracks](fairtracks-properties-doc_info-properties-doc_ontology_versions-properties-obiowl.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions/properties/http://purl.obolibrary.org/obo/obi.owl")       |
| [http://purl.obolibrary.org/obo/so.owl](#http://purl.obolibrary.org/obo/so.owl)         | `string` | Required | cannot be null | [FAIRtracks](fairtracks-properties-doc_info-properties-doc_ontology_versions-properties-soowl.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions/properties/http://purl.obolibrary.org/obo/so.owl")         |
| [http://purl.obolibrary.org/obo/uberon.owl](#http://purl.obolibrary.org/obo/uberon.owl) | `string` | Required | cannot be null | [FAIRtracks](fairtracks-properties-doc_info-properties-doc_ontology_versions-properties-uberonowl.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions/properties/http://purl.obolibrary.org/obo/uberon.owl") |

## http://edamontology.org/EDAM.owl




`http://edamontology.org/EDAM.owl`

-   is required
-   Type: `string`
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-doc_info-properties-doc_ontology_versions-properties-edamowl.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions/properties/http://edamontology.org/EDAM.owl")
-   format: "uri"
-   autogenerated: true

### EDAM.owl Type

`string`

### EDAM.owl Constraints

**pattern**: the string must match the following regular expression: 

```regexp
^http://edamontology.org/EDAM_[0-9]+\.[0-9]+.owl$
```

[try pattern](https://regexr.com/?expression=%5Ehttp%3A%2F%2Fedamontology.org%2FEDAM_%5B0-9%5D%2B%5C.%5B0-9%5D%2B.owl%24 "try regular expression with regexr.com")

**URI**: the string must be a URI, according to [RFC 3986](https://tools.ietf.org/html/rfc4291 "check the specification")

### EDAM.owl Examples

```json
"http://edamontology.org/EDAM_1.21.owl"
```

## http://purl.obolibrary.org/obo/cl.owl




`http://purl.obolibrary.org/obo/cl.owl`

-   is required
-   Type: `string`
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-doc_info-properties-doc_ontology_versions-properties-clowl.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions/properties/http://purl.obolibrary.org/obo/cl.owl")
-   format: "uri"
-   autogenerated: true

### cl.owl Type

`string`

### cl.owl Constraints

**pattern**: the string must match the following regular expression: 

```regexp
^http://purl.obolibrary.org/obo/cl/releases/[0-9]+-[0-9]+-[0-9]+/cl.owl$
```

[try pattern](https://regexr.com/?expression=%5Ehttp%3A%2F%2Fpurl.obolibrary.org%2Fobo%2Fcl%2Freleases%2F%5B0-9%5D%2B-%5B0-9%5D%2B-%5B0-9%5D%2B%2Fcl.owl%24 "try regular expression with regexr.com")

**URI**: the string must be a URI, according to [RFC 3986](https://tools.ietf.org/html/rfc4291 "check the specification")

### cl.owl Examples

```json
"http://purl.obolibrary.org/obo/cl/releases/2019-08-12/cl.owl"
```

## http://www.ebi.ac.uk/efo/efo.owl




`http://www.ebi.ac.uk/efo/efo.owl`

-   is required
-   Type: `string`
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-doc_info-properties-doc_ontology_versions-properties-efoowl.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions/properties/http://www.ebi.ac.uk/efo/efo.owl")
-   format: "uri"
-   autogenerated: true

### efo.owl Type

`string`

### efo.owl Constraints

**pattern**: the string must match the following regular expression: 

```regexp
^https://github.com/EBISPOT/efo/releases/download/v[0-9]+.[0-9]+.[0-9]+/efo.owl$
```

[try pattern](https://regexr.com/?expression=%5Ehttps%3A%2F%2Fgithub.com%2FEBISPOT%2Fefo%2Freleases%2Fdownload%2Fv%5B0-9%5D%2B.%5B0-9%5D%2B.%5B0-9%5D%2B%2Fefo.owl%24 "try regular expression with regexr.com")

**URI**: the string must be a URI, according to [RFC 3986](https://tools.ietf.org/html/rfc4291 "check the specification")

### efo.owl Examples

```json
"https://github.com/EBISPOT/efo/releases/download/v3.12.0/efo.owl"
```

## http://purl.obolibrary.org/obo/ncit.owl




`http://purl.obolibrary.org/obo/ncit.owl`

-   is required
-   Type: `string`
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-doc_info-properties-doc_ontology_versions-properties-ncitowl.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions/properties/http://purl.obolibrary.org/obo/ncit.owl")
-   format: "uri"
-   autogenerated: true

### ncit.owl Type

`string`

### ncit.owl Constraints

**pattern**: the string must match the following regular expression: 

```regexp
^http://purl.obolibrary.org/obo/ncit/releases/[0-9]+-[0-9]+-[0-9]+/ncit.owl$
```

[try pattern](https://regexr.com/?expression=%5Ehttp%3A%2F%2Fpurl.obolibrary.org%2Fobo%2Fncit%2Freleases%2F%5B0-9%5D%2B-%5B0-9%5D%2B-%5B0-9%5D%2B%2Fncit.owl%24 "try regular expression with regexr.com")

**URI**: the string must be a URI, according to [RFC 3986](https://tools.ietf.org/html/rfc4291 "check the specification")

### ncit.owl Examples

```json
"http://purl.obolibrary.org/obo/ncit/releases/2019-09-09/ncit.owl"
```

## http://purl.obolibrary.org/obo/obi.owl




`http://purl.obolibrary.org/obo/obi.owl`

-   is required
-   Type: `string`
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-doc_info-properties-doc_ontology_versions-properties-obiowl.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions/properties/http://purl.obolibrary.org/obo/obi.owl")
-   format: "uri"
-   autogenerated: true

### obi.owl Type

`string`

### obi.owl Constraints

**pattern**: the string must match the following regular expression: 

```regexp
^http://purl.obolibrary.org/obo/obi/[0-9]+-[0-9]+-[0-9]+/obi.owl$
```

[try pattern](https://regexr.com/?expression=%5Ehttp%3A%2F%2Fpurl.obolibrary.org%2Fobo%2Fobi%2F%5B0-9%5D%2B-%5B0-9%5D%2B-%5B0-9%5D%2B%2Fobi.owl%24 "try regular expression with regexr.com")

**URI**: the string must be a URI, according to [RFC 3986](https://tools.ietf.org/html/rfc4291 "check the specification")

### obi.owl Examples

```json
"http://purl.obolibrary.org/obo/obi/2019-11-12/obi.owl"
```

## http://purl.obolibrary.org/obo/so.owl




`http://purl.obolibrary.org/obo/so.owl`

-   is required
-   Type: `string`
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-doc_info-properties-doc_ontology_versions-properties-soowl.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions/properties/http://purl.obolibrary.org/obo/so.owl")
-   format: "uri"
-   autogenerated: true

### so.owl Type

`string`

### so.owl Constraints

**pattern**: the string must match the following regular expression: 

```regexp
^https://raw.githubusercontent.com/The-Sequence-Ontology/SO-Ontologies/v[0-9]+\.[0-9]+/releases/so-xp.owl/so.owl$
```

[try pattern](https://regexr.com/?expression=%5Ehttps%3A%2F%2Fraw.githubusercontent.com%2FThe-Sequence-Ontology%2FSO-Ontologies%2Fv%5B0-9%5D%2B%5C.%5B0-9%5D%2B%2Freleases%2Fso-xp.owl%2Fso.owl%24 "try regular expression with regexr.com")

**URI**: the string must be a URI, according to [RFC 3986](https://tools.ietf.org/html/rfc4291 "check the specification")

### so.owl Examples

```json
"https://raw.githubusercontent.com/The-Sequence-Ontology/SO-Ontologies/v3.1/releases/so-xp.owl/so.owl"
```

## http://purl.obolibrary.org/obo/uberon.owl




`http://purl.obolibrary.org/obo/uberon.owl`

-   is required
-   Type: `string`
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-doc_info-properties-doc_ontology_versions-properties-uberonowl.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions/properties/http://purl.obolibrary.org/obo/uberon.owl")
-   format: "uri"
-   autogenerated: true

### uberon.owl Type

`string`

### uberon.owl Constraints

**pattern**: the string must match the following regular expression: 

```regexp
^http://purl.obolibrary.org/obo/uberon/releases/[0-9]+-[0-9]+-[0-9]+/uberon.owl$
```

[try pattern](https://regexr.com/?expression=%5Ehttp%3A%2F%2Fpurl.obolibrary.org%2Fobo%2Fuberon%2Freleases%2F%5B0-9%5D%2B-%5B0-9%5D%2B-%5B0-9%5D%2B%2Fuberon.owl%24 "try regular expression with regexr.com")

**URI**: the string must be a URI, according to [RFC 3986](https://tools.ietf.org/html/rfc4291 "check the specification")

### uberon.owl Examples

```json
"http://purl.obolibrary.org/obo/uberon/releases/2019-06-27/uberon.owl"
```
