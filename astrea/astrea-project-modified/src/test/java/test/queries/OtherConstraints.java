package test.queries;

import astrea.generators.OwlGenerator;
import astrea.model.ShaclFromOwl;

import org.apache.jena.rdf.model.Model;
import org.apache.jena.rdf.model.RDFNode;
import org.apache.jena.rdf.model.ResourceFactory;
import org.junit.Assert;
import org.junit.Test;

public class OtherConstraints {

    private static final String OWL_FRAGMENT_HAS_VALUE ="@prefix : <http://www.w3.org/2006/time#> .\n" +
            "@prefix dct: <http://purl.org/dc/terms/> .\n" +
            "@prefix owl: <http://www.w3.org/2002/07/owl#> .\n" +
            "@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .\n" +
            "@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .\n" +
            "@prefix skos: <http://www.w3.org/2004/02/skos/core#> .\n" +
            "@prefix xsd: <http://www.w3.org/2001/XMLSchema#> ."+
            ":DateTimeDescription\n" +
            "  rdf:type owl:Class ;\n" +
            "  rdfs:comment \"Description of date and time structured with separate values for the various elements of a calendar-clock system. The temporal reference system is fixed to Gregorian Calendar, and the range of year, month, day properties restricted to corresponding XML Schema types xsd:gYear, xsd:gMonth and xsd:gDay, respectively.\"@en ;\n" +
            "  rdfs:label \"Date-Time description\"@en ;\n" +
            "  rdfs:subClassOf [\n" +
            "      rdf:type owl:Restriction ;\n" +
            "      owl:hasValue <http://www.opengis.net/def/uom/ISO-8601/0/Gregorian> ;\n" +
            "      owl:onProperty :hasTRS ;\n" +
            "    ] ;\n" +
            "  skos:definition \"Description of date and time structured with separate values for the various elements of a calendar-clock system. The temporal reference system is fixed to Gregorian Calendar, and the range of year, month, day properties restricted to corresponding XML Schema types xsd:gYear, xsd:gMonth and xsd:gDay, respectively.\"@en ;\n" +
            ".";

    public static final String OWL_FRAGMENT_IN = "@prefix owl: <http://www.w3.org/2002/07/owl#> .\n"+
            "<http://njh.me/#WineSugar>\n" +
            "  a owl:Class ;\n" +
            "  owl:oneOf (\n" +
            "   <http://njh.me/#Sweet>\n" +
            "   <http://njh.me/#OffDry>\n" +
            "   <http://njh.me/#Dry>\n" +
            " ) .";
    
 

    private static final String SH_HAS_VALUE = "http://www.w3.org/ns/shacl#hasValue";
    private static final String SH_IN = "http://www.w3.org/ns/shacl#in";

    @Test
    public void compliantWithShHasValueShape() {
        ShaclFromOwl sharper = new OwlGenerator();
        Model shapes =  sharper.fromOwl(OWL_FRAGMENT_HAS_VALUE, "TURTLE");
       
        Boolean condition = shapes.contains(null, ResourceFactory.createProperty(SH_HAS_VALUE), ResourceFactory.createResource("http://www.opengis.net/def/uom/ISO-8601/0/Gregorian"));
        Assert.assertTrue(condition);
    }

    
    @Test
    public void compliantWithShInShape() {
        ShaclFromOwl sharper = new OwlGenerator();
        Model shapes =  sharper.fromOwl(OWL_FRAGMENT_IN, "TURTLE");
        Boolean condition = shapes.contains(null, ResourceFactory.createProperty(SH_IN), (RDFNode) null)
        						& shapes.containsResource(ResourceFactory.createResource("https://astrea.linkeddata.es/shapes#6e6ce7f54207f8740e927008c6de69b3"))
				        		& shapes.containsResource(ResourceFactory.createResource("https://astrea.linkeddata.es/shapes#1114148e7eeeaccf8b51c06e0ce981b7"))
				        		& shapes.containsResource(ResourceFactory.createResource("https://astrea.linkeddata.es/shapes#e250b67865c6fabd97b6d97e06639a95"));
        Assert.assertTrue(condition);
    }
    
 
}
