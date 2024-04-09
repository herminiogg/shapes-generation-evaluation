#!/bin/bash

JVM_ARGS=-Xmx12g

cd data
python createFilmsJSON.py
cd ..

if [[ ! -e "bin" ]]; then
	mkdir bin
	cd bin/
	curl -OL https://github.com/herminiogg/ShExML/releases/download/v0.5.2/ShExML-v0.5.2.jar
	pip install shexer
	cd ..
	cd RML2SHACL
	pip install -r requirements.txt
	cd ../astrea/astrea-project-modified
	sh mvn-install.sh
	cd ..
	mvn clean package
	cd ..
fi

java $JVM_ARGS -jar bin/ShExML-v0.5.2.jar -m=mapping-rules/films_JSON_1000.shexml -o=data/films_1000_entries.ttl > /dev/null
java $JVM_ARGS -jar bin/ShExML-v0.5.2.jar -m=mapping-rules/films_JSON_10000.shexml -o=data/films_10000_entries.ttl > /dev/null
java $JVM_ARGS -jar bin/ShExML-v0.5.2.jar -m=mapping-rules/films_JSON_100000.shexml -o=data/films_100000_entries.ttl > /dev/null
java $JVM_ARGS -jar bin/ShExML-v0.5.2.jar -m=mapping-rules/films_JSON_1000000.shexml -o=data/films_1000000_entries.ttl > /dev/null

if [[ ! -e "generated-shapes" ]]; then
	mkdir generated-shapes
fi

function m() {
	for i in $(seq 1 30)
	do
		t0=$(date +%s%3N)
	   	eval $(timeout 3m $1 >/dev/null)
	   	t1=$(date +%s%3N)
	   	total=$(($total+$t1-$t0))
	   	echo "$i;$2;$3;$4;$(($t1-$t0))"
	done
}

echo "Hit;Tool;ShapesLanguage;Size;ElapseTime_ms"

m "python shexer/main.py data/films_1000_entries.ttl" "sheXer" "ShEx" "1000"
m "python shexer/mainSHACL.py data/films_1000_entries.ttl" "sheXer" "SHACL" "1000"

m "python shexer/main.py data/films_10000_entries.ttl" "sheXer" "ShEx" "10000"
m "python shexer/mainSHACL.py data/films_10000_entries.ttl" "sheXer" "SHACL" "10000"

m "python shexer/main.py data/films_100000_entries.ttl" "sheXer" "ShEx" "100000"
m "python shexer/mainSHACL.py data/films_100000_entries.ttl" "sheXer" "SHACL" "100000"

m "python shexer/main.py data/films_1000000_entries.ttl" "sheXer" "ShEx" "1000000"
m "python shexer/mainSHACL.py data/films_1000000_entries.ttl" "sheXer" "SHACL" "1000000"

m "python RML2SHACL/main.py mapping-rules/films_JSON_1000.rml.ttl" "RML2SHACL" "SHACL" "1000"
m "python RML2SHACL/main.py mapping-rules/films_JSON_10000.rml.ttl" "RML2SHACL" "SHACL" "10000"
m "python RML2SHACL/main.py mapping-rules/films_JSON_100000.rml.ttl" "RML2SHACL" "SHACL" "100000"
m "python RML2SHACL/main.py mapping-rules/films_JSON_1000000.rml.ttl" "RML2SHACL" "SHACL" "1000000"

m "java $JVM_ARGS -jar bin/ShExML-v0.5.2.jar -m=mapping-rules/films_JSON_1000.shexml -s -o=generated-shapes/shexml-shex-1000.shex" "ShExML" "ShEx" "1000"
m "java $JVM_ARGS -jar bin/ShExML-v0.5.2.jar -m=mapping-rules/films_JSON_1000.shexml -sh -o=generated-shapes/shexml-shacl-1000.ttl" "ShExML" "SHACL" "1000"

m "java $JVM_ARGS -jar bin/ShExML-v0.5.2.jar -m=mapping-rules/films_JSON_10000.shexml -s -o=generated-shapes/shexml-shex-10000.shex" "ShExML" "ShEx" "10000"
m "java $JVM_ARGS -jar bin/ShExML-v0.5.2.jar -m=mapping-rules/films_JSON_10000.shexml -sh -o=generated-shapes/shexml-shacl-10000.ttl" "ShExML" "SHACL" "10000"

m "java $JVM_ARGS -jar bin/ShExML-v0.5.2.jar -m=mapping-rules/films_JSON_100000.shexml -s -o=generated-shapes/shexml-shex-100000.shex" "ShExML" "ShEx" "100000"
m "java $JVM_ARGS -jar bin/ShExML-v0.5.2.jar -m=mapping-rules/films_JSON_100000.shexml -sh -o=generated-shapes/shexml-shacl-100000.ttl" "ShExML" "SHACL" "100000"

m "java $JVM_ARGS -jar bin/ShExML-v0.5.2.jar -m=mapping-rules/films_JSON_1000000.shexml -s -o=generated-shapes/shexml-shex-1000000.shex" "ShExML" "ShEx" "1000000"
m "java $JVM_ARGS -jar bin/ShExML-v0.5.2.jar -m=mapping-rules/films_JSON_1000000.shexml -sh -o=generated-shapes/shexml-shacl-1000000.ttl" "ShExML" "SHACL" "1000000"

m "java $JVM_ARGS -jar astrea/target/astrea-wrapper-1.0-SNAPSHOT.jar ontology/schemaorg-small.owl generated-shapes/astrea-shacl-1000.ttl" "astrea" "SHACL" "1000"
m "java $JVM_ARGS -jar astrea/target/astrea-wrapper-1.0-SNAPSHOT.jar ontology/schemaorg-small.owl generated-shapes/astrea-shacl-10000.ttl" "astrea" "SHACL" "10000"
m "java $JVM_ARGS -jar astrea/target/astrea-wrapper-1.0-SNAPSHOT.jar ontology/schemaorg-small.owl generated-shapes/astrea-shacl-100000.ttl" "astrea" "SHACL" "100000"
m "java $JVM_ARGS -jar astrea/target/astrea-wrapper-1.0-SNAPSHOT.jar ontology/schemaorg-small.owl generated-shapes/astrea-shacl-1000000.ttl" "astrea" "SHACL" "1000000"