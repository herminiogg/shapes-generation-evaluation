#!/bin/bash

JVM_ARGS="-Xmx10g -Dfile.encoding=UTF8"

if [[ ! -e "bin" ]]; then
	mkdir bin
	cd bin/
	curl -OL https://github.com/herminiogg/ShExML/releases/download/v0.5.2/ShExML-v0.5.2.jar
	pip install shexer
	cd ..
	cd RML2SHACL
	pip install -r requirements.txt
	cd ../astrea/astrea-project-modified
	bash mvn-install.sh
	cd ..
	mvn clean package
	cd ..
fi

java $JVM_ARGS -jar bin/ShExML-v0.5.2.jar -nu -m=mapping-rules/films_extended.shexml -o=data/films_extended.ttl

if [[ ! -e "generated-shapes" ]]; then
	mkdir generated-shapes
fi

python shexer/main.py data/films_extended.ttl
python shexer/mainSHACL.py data/films_extended.ttl

python RML2SHACL/main.py mapping-rules/films_extended.rml.ttl

java $JVM_ARGS -jar bin/ShExML-v0.5.2.jar -m=mapping-rules/films_extended.shexml -s -o=generated-shapes/shexml-shex-films-extended.shex
java $JVM_ARGS -jar bin/ShExML-v0.5.2.jar -m=mapping-rules/films_extended.shexml -sh -o=generated-shapes/shexml-shacl-films-extended.ttl

java $JVM_ARGS -jar astrea/target/astrea-wrapper-1.0-SNAPSHOT.jar ontology/schemaorg-small-extended.owl generated-shapes/astrea-shacl-extended.ttl