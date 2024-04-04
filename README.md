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
|  Library  | Version |
|-----------|---------|
| Astrea    | 1.2.1   |
| RML2SHACL | 1.0.0   |
| sheXer    | 2.2.2   |
| ShExML    | 0.5.1   |