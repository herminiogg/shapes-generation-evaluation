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
	cd ../astrea/astrea
	bash mvn-install.sh
	cd ..
	mvn clean package
	cd ..
	cd SCOOP
	pip install -r requirements.txt
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

cd SCOOP
# All
# RML + OWL
python main.py --mode all --priority rml ontology -m ../mapping-rules/films_extended.rml.ttl -o ../ontology/schemaorg-small-extended.ttl -ot ../generated-shapes/scoop-shacl-extended-all-RML+OWL.ttl
# RML + XSD
python main.py --mode all --priority rml xsd -m ../mapping-rules/films_extended.rml.ttl -x ../schema/films-extended.xsd -ot ../generated-shapes/scoop-shacl-extended-all-RML+XSD.ttl
# RML + OWL + XSD
python main.py --mode all --priority rml ontology xsd -m ../mapping-rules/films_extended.rml.ttl -o ../ontology/schemaorg-small-extended.ttl -x ../schema/films-extended.xsd -ot ../generated-shapes/scoop-shacl-extended-all-RML+OWL+XSD.ttl
# RML + OWL + XSD + PA
python main.py --mode all --priority rml ontology xsd -m ../mapping-rules/films_extended.rml.ttl -o ../ontology/schemaorg-small-extended.ttl -x ../schema/films-extended.xsd  -xr ../mapping-rules/films_extended.rml.ttl -ot ../generated-shapes/scoop-shacl-extended-all-RML+OWL+XSD+PA.ttl


# Priority
# RML + OWL
python main.py --mode priority --priority rml ontology -m ../mapping-rules/films_extended.rml.ttl -o ../ontology/schemaorg-small-extended.ttl -ot ../generated-shapes/scoop-shacl-extended-priority-RML+OWL.ttl
# RML + XSD
python main.py --mode priority --priority rml xsd -m ../mapping-rules/films_extended.rml.ttl -x ../schema/films-extended.xsd -ot ../generated-shapes/scoop-shacl-extended-priority-RML+XSD.ttl
# RML + OWL + XSD
python main.py --mode priority --priority rml ontology xsd -m ../mapping-rules/films_extended.rml.ttl -o ../ontology/schemaorg-small-extended.ttl -x ../schema/films-extended.xsd -ot ../generated-shapes/scoop-shacl-extended-priority-RML+OWL+XSD.ttl
# RML + OWL + XSD + PA
python main.py --mode priority --priority rml ontology xsd -m ../mapping-rules/films_extended.rml.ttl -o ../ontology/schemaorg-small-extended.ttl -x ../schema/films-extended.xsd -xr ../mapping-rules/films_extended.rml.ttl -ot ../generated-shapes/scoop-shacl-extended-priority-RML+OWL+XSD+PA.ttl

# PriorityR
# RML + OWL
python main.py --mode priorityR --priority rml ontology -m ../mapping-rules/films_extended.rml.ttl -o ../ontology/schemaorg-small-extended.ttl -ot ../generated-shapes/scoop-shacl-extended-priorityR-RML+OWL.ttl
# RML + XSD
python main.py --mode priorityR --priority rml xsd -m ../mapping-rules/films_extended.rml.ttl -x ../schema/films-extended.xsd -ot ../generated-shapes/scoop-shacl-extended-priorityR-RML+XSD.ttl
# RML + OWL + XSD
python main.py --mode priorityR --priority rml ontology xsd -m ../mapping-rules/films_extended.rml.ttl -o ../ontology/schemaorg-small-extended.ttl -x ../schema/films-extended.xsd -ot ../generated-shapes/scoop-shacl-extended-priorityR-RML+OWL+XSD.ttl
# RML + OWL + XSD + PA
python main.py --mode priorityR --priority rml ontology xsd -m ../mapping-rules/films_extended.rml.ttl -o ../ontology/schemaorg-small-extended.ttl -x ../schema/films-extended.xsd -xr ../mapping-rules/films_extended.rml.ttl -ot ../generated-shapes/scoop-shacl-extended-priorityR-RML+OWL+XSD+PA.ttl
cd ..