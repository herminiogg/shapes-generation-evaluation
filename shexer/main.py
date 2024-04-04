from shexer.shaper import Shaper
from shexer.consts import TURTLE, NT, SHEXC, SHACL_TURTLE
import sys

target_classes = [
    "http://schema.org/Movie",
    "http://schema.org/Person",
    "http://example.com/Appearance",

]

namespaces_dict = {"http://www.w3.org/1999/02/22-rdf-syntax-ns#": "rdf",
                   "http://example.com/": "",
                   "http://www.w3.org/2001/XMLSchema#": "xsd",
                   "http://dbpedia.org/resource/": "dbr",
                   "http://schema.org/": "schema"
                  }

filename = sys.argv[1]

with open(filename) as file:
    raw_graph = file.read()

shaper = Shaper(target_classes=target_classes,
                raw_graph=raw_graph,
                input_format=TURTLE,
                namespaces_dict=namespaces_dict,  # Default: no prefixes
                instantiation_property="http://www.w3.org/1999/02/22-rdf-syntax-ns#type")  # Default rdf:type

filename_without_dir = filename.replace("data/", "")
output_file = f"generated-shapes/{filename_without_dir}-shexer-shex.shex"

shaper.shex_graph(output_file=output_file,
                acceptance_threshold=0.1)
