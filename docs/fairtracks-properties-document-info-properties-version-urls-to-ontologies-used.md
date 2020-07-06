# Version URLs to Ontologies used Schema

```txt
https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions
```

URLs to the version of the ontologies used in the JSON document


| Abstract            | Extensible | Status         | Identifiable | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                               |
| :------------------ | ---------- | -------------- | ------------ | :---------------- | --------------------- | ------------------- | ---------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | No           | Forbidden         | Allowed               | none                | [fairtracks.schema.json\*](../json/schema/fairtracks.schema.json "open original schema") |

## doc_ontology_versions Type

`object` ([Version URLs to Ontologies used](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used.md))

# Version URLs to Ontologies used Properties

| Property                                                                                | Type     | Required | Nullable       | Defined by                                                                                                                                                                                                                                                                                                                                                                                          |
| :-------------------------------------------------------------------------------------- | -------- | -------- | -------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [http://edamontology.org/EDAM.owl](#http://edamontology.org/EDAM.owl)                   | `string` | Required | cannot be null | [FAIRtracks](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used-properties-version-url-to-edam-ontology.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions/properties/http://edamontology.org/EDAM.owl")                                |
| [http://purl.obolibrary.org/obo/cl.owl](#http://purl.obolibrary.org/obo/cl.owl)         | `string` | Required | cannot be null | [FAIRtracks](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used-properties-version-url-to-cell-ontology.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions/properties/http://purl.obolibrary.org/obo/cl.owl")                           |
| [http://www.ebi.ac.uk/efo/efo.owl](#http://www.ebi.ac.uk/efo/efo.owl)                   | `string` | Required | cannot be null | [FAIRtracks](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used-properties-version-url-to-experimental-factor-ontology.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions/properties/http://www.ebi.ac.uk/efo/efo.owl")                 |
| [http://purl.obolibrary.org/obo/ncit.owl](#http://purl.obolibrary.org/obo/ncit.owl)     | `string` | Required | cannot be null | [FAIRtracks](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used-properties-version-url-to-nci-thesaurus-obo-edition.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions/properties/http://purl.obolibrary.org/obo/ncit.owl")             |
| [http://purl.obolibrary.org/obo/obi.owl](#http://purl.obolibrary.org/obo/obi.owl)       | `string` | Required | cannot be null | [FAIRtracks](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used-properties-version-url-to-ontology-for-biomedical-investigations.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions/properties/http://purl.obolibrary.org/obo/obi.owl") |
| [http://purl.obolibrary.org/obo/so.owl](#http://purl.obolibrary.org/obo/so.owl)         | `string` | Required | cannot be null | [FAIRtracks](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used-properties-version-url-to-sequence-ontology.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions/properties/http://purl.obolibrary.org/obo/so.owl")                       |
| [http://purl.obolibrary.org/obo/uberon.owl](#http://purl.obolibrary.org/obo/uberon.owl) | `string` | Required | cannot be null | [FAIRtracks](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used-properties-version-url-to-uberon-ontology.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions/properties/http://purl.obolibrary.org/obo/uberon.owl")                     |

## http://edamontology.org/EDAM.owl

URL to the version of "Bioinformatics operations, data types, formats, identifiers and topics" (EDAM Ontology) used in the JSON document


`http://edamontology.org/EDAM.owl`

-   is required
-   Type: `string` ([Version URL to "EDAM Ontology"](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used-properties-version-url-to-edam-ontology.md))
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used-properties-version-url-to-edam-ontology.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions/properties/http://edamontology.org/EDAM.owl")
-   format: "uri"
-   autogenerated: true

### EDAM.owl Type

`string` ([Version URL to "EDAM Ontology"](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used-properties-version-url-to-edam-ontology.md))

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

URL to the version of "Cell Ontology" used in the JSON document


`http://purl.obolibrary.org/obo/cl.owl`

-   is required
-   Type: `string` ([Version URL to "Cell Ontology"](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used-properties-version-url-to-cell-ontology.md))
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used-properties-version-url-to-cell-ontology.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions/properties/http://purl.obolibrary.org/obo/cl.owl")
-   format: "uri"
-   autogenerated: true

### cl.owl Type

`string` ([Version URL to "Cell Ontology"](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used-properties-version-url-to-cell-ontology.md))

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

URL to the version of "Experimental Factor Ontology" used in the JSON document


`http://www.ebi.ac.uk/efo/efo.owl`

-   is required
-   Type: `string` ([Version URL to "Experimental Factor Ontology"](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used-properties-version-url-to-experimental-factor-ontology.md))
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used-properties-version-url-to-experimental-factor-ontology.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions/properties/http://www.ebi.ac.uk/efo/efo.owl")
-   format: "uri"
-   autogenerated: true

### efo.owl Type

`string` ([Version URL to "Experimental Factor Ontology"](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used-properties-version-url-to-experimental-factor-ontology.md))

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

URL to the version of "NCI Thesaurus OBO Edition" used in the JSON document


`http://purl.obolibrary.org/obo/ncit.owl`

-   is required
-   Type: `string` ([Version URL to "NCI Thesaurus OBO EDITION"](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used-properties-version-url-to-nci-thesaurus-obo-edition.md))
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used-properties-version-url-to-nci-thesaurus-obo-edition.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions/properties/http://purl.obolibrary.org/obo/ncit.owl")
-   format: "uri"
-   autogenerated: true

### ncit.owl Type

`string` ([Version URL to "NCI Thesaurus OBO EDITION"](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used-properties-version-url-to-nci-thesaurus-obo-edition.md))

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

URL to the version of "Ontology for Biomedical Investigations" used in the JSON document


`http://purl.obolibrary.org/obo/obi.owl`

-   is required
-   Type: `string` ([Version URL to "Ontology for Biomedical Investigations"](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used-properties-version-url-to-ontology-for-biomedical-investigations.md))
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used-properties-version-url-to-ontology-for-biomedical-investigations.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions/properties/http://purl.obolibrary.org/obo/obi.owl")
-   format: "uri"
-   autogenerated: true

### obi.owl Type

`string` ([Version URL to "Ontology for Biomedical Investigations"](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used-properties-version-url-to-ontology-for-biomedical-investigations.md))

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

URL to the version of "Sequence types and features ontology" used in the JSON document


`http://purl.obolibrary.org/obo/so.owl`

-   is required
-   Type: `string` ([Version URL to "Sequence Ontology"](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used-properties-version-url-to-sequence-ontology.md))
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used-properties-version-url-to-sequence-ontology.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions/properties/http://purl.obolibrary.org/obo/so.owl")
-   format: "uri"
-   autogenerated: true

### so.owl Type

`string` ([Version URL to "Sequence Ontology"](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used-properties-version-url-to-sequence-ontology.md))

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

URL to the version of  "Uber-anatomy ontology" used in the JSON document


`http://purl.obolibrary.org/obo/uberon.owl`

-   is required
-   Type: `string` ([Version URL to "Uberon Ontology"](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used-properties-version-url-to-uberon-ontology.md))
-   cannot be null
-   defined in: [FAIRtracks](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used-properties-version-url-to-uberon-ontology.md "https://raw.githubusercontent.com/fairtracks/fairtracks_standard/v1/current/json/schema/fairtracks.schema.json#/properties/doc_info/properties/doc_ontology_versions/properties/http://purl.obolibrary.org/obo/uberon.owl")
-   format: "uri"
-   autogenerated: true

### uberon.owl Type

`string` ([Version URL to "Uberon Ontology"](fairtracks-properties-document-info-properties-version-urls-to-ontologies-used-properties-version-url-to-uberon-ontology.md))

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
