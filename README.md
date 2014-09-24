# OpenGeo Suite Data Packs

This repository contains a set of re-usable GeoServer data configurations.

## Building

The data packs are built with [Apache Ant](http://ant.apache.org/).

1. To build a data pack change into the specific directory and compile.

    cd medford
    ant build assemble

2. The data pack is available in target/medford.zip
3. To use unzip the data pack in GEOSERVER_DATADIRECTORY and restart your server

To build all content an [Apache maven](http://maven.apache.org/) pom.xml has been provided.

