# EXCELERATE WP2 JSON Schema validation, Java edition

All the benchmarking JSON schemas should be compliant with JSON Schema Draft04 specification.

So, the proposed validation program uses libraries compliant with that specification.

* This directory contains a Java project of a validator program, whose dependencies are defined in [pom.xml](pom.xml).
	- In order to compile the project you need [Maven](https://maven.apache.org/). It is available in some Linux distributions (Ubuntu package `maven`).
	
	- The dependencies are fetched, and the program is built running next command from this directory:
	  ```bash
	  mvn package appassembler:assemble
	  ```
	
	- The generated bundle (the program, along all its dependencies), is available at `target/appassembler` subdirectory. It can be run using next command line:
	  ```bash
	  export PATH="${PWD}/target/appassembler/bin:$PATH"
	  jsonValidate ../../json-schemas ../../prototype-data/cameo_prototype_data_fixed
	  ```
