package org.example;

import astrea.generators.OwlGenerator;
import astrea.model.ShaclFromOwl;
import org.apache.jena.rdf.model.Model;
import org.apache.jena.riot.RDFDataMgr;
import java.io.*;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.file.FileSystems;

public class Main {
    public static void main(String[] args) {
        org.apache.jena.query.ARQ.init();
        PrintWriter pw = null ;
        try {
            ShaclFromOwl sharper = new OwlGenerator(RDFDataMgr.loadModel("https://raw.githubusercontent.com/oeg-upm/astrea/master/material/Astrea-KG-latest.ttl"));
            Model shapes = sharper.fromModel(RDFDataMgr.loadModel(args[0]));
            OutputStream outputStream = new ByteArrayOutputStream();
            shapes.write(outputStream, "TURTLE");
            pw = new PrintWriter(args[1]);
            pw.print(outputStream);
        } catch (IOException e) {
            throw new RuntimeException(e);
        } finally {
            if(pw != null)
                pw.close();
        }
    }
}