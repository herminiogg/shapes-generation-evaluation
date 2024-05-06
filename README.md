# Shape generation evaluation: scripts and results
This repository collects the used scripts, resources and results for the evaluation of shapes generation.

## Running the experiment and directory structure
To run the experiment one can simply run the `run.sh` script:

```
$ bash run.sh
```

Each folder contains the following contents:

* data: it contains the scripts to create the incremental dataset as well as well as the extended films example.
* mapping-rules: the used mapping rules per input are stored here.
* ontology: it contains the two ontologies files used by Astrea for the generation of shapes.
* generated-shapes: all the generated shapes (in ShEx and SHACL) by the evaluated tools are stored in this folder.

## Used versions
|  Library  | Version          |
|-----------|------------------|
| Astrea    | 1.2.1-modified   |
| RML2SHACL | 1.0.0-modified   |
| sheXer    | 2.2.2            |
| ShExML    | 0.5.2            |

## Comparison of restrictions coverage

### SHACL

|  Library  | file             |
|-----------|------------------|
| Astrea    | generatedShapes/astrea-shacl-extended.ttl                |
| RML2SHACL | generatedShapes/films_extended.rml.ttl-ouput-shape.ttl   |
| sheXer    | generatedShapes/films_extended.ttl-shexer-shacl.ttl      |
| ShExML    | generatedShapes/shexml-shacl-films-extended.ttl          |

#### Validation results against data/films_extended.ttl

|  Library  | SHACLex | JenaSHACL | SHACL_TQ | Reason |
|-----------|---------|-----------|----------|--------|
| Astrea    | ❌ | ❌ | ❌ | Appearance should be a BlankNodeOrIRI not just IRI and rdfs:Resource does not get recognised as any possible node | 
| RML2SHACL | ❌ | ❌ | ❌ | Missing sh:targetClass when it still fails on the Actor shape |
| sheXer    | ⚠️ | ⚠️ | ⚠️ | Validates but it is missing the linked shapes |
| ShExML    | ✅ | ✅ | ✅ | |

#### Functionality coverage comparison
|  Functionality  | Astrea             | RML2SHACL | sheXer | ShExML |
|-----------------|--------------------|-----------|--------|--------|
| Cardinality (sh:maxCount & sh:minCount) | ✅ | ❌ | ✅ (but it might fit too much) | ✅ |
| Datatypes (sh:datatype) | ✅ | ✅ | ✅ | ✅ |
| Differentation IRIs and Bnodes (sh:nodeKind) | ❌ (see error) | ✅ | ❌ (it does not traverse shapes) | ✅ |
| Enumeration (sh:in) | ❌ | ❌ | ✅ | ✅ |
| Language tags (sh:languageIn) | ❌ | ✅ | ❌ | ✅ |
| Linking shapes (sh:node) | ✅ | ✅ | ❌ | ✅ |
| Patterns (sh:pattern) | ⚠️ (based on the datatype) | ⚠️ (only used for IRIs) | ❌ | ❌ |

### ShEx

|  Library  | file             |
|-----------|------------------|
| sheXer    | generatedShapes/films_extended.ttl-shexer-shex.shex      |
| ShExML    | generatedShapes/shexml-shex-films-extended.shex          |

#### Validation results against data/films_extended.ttl

|  Library  | Shape Map | Result             | SHACLex | shex.js |
|-----------|-----------|--------------------|---------|---------|
| sheXer    | :1@weso-s:Movie,:2@weso-s:Movie | ❌ | ❌ | The :Appearance Bnode does not get recognised | |
| ShExML    | :1@:Films,:2@:Films | ✅ | ✅ | |

#### Functionality coverage comparison
|  Functionality  | sheXer | ShExML |
|-----------------|--------|--------|
| Cardinality | ✅ (but it might fit too much) | ✅ |
| Datatypes  | ✅ | ✅ |
| Differentation IRIs and Bnodes | ✅ | ✅ |
| Enumeration | ✅ | ✅ |
| Language tags | ❌ | ✅ |
| Linking shapes | ❌ | ✅ |
| Patterns | ❌ | ❌ |
| Stems for IRIs | ❌ | ✅ |
