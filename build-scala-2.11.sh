#!/usr/bin/env bash

git checkout sparse-speedup-13.0

mvn clean package -DskipTests

echo "Make sure to put the custom repo in the right place for your machine!"
echo "This location will have to be put into the Universal Recommenders build.sbt"

mvn deploy:deploy-file -Durl=file:///Users/pat/.custom-scala-m2/repo/ -Dfile=//Users/pat/mahout/hdfs/target/mahout-hdfs-0.13.0.jar -DgroupId=org.apache.mahout -DartifactId=mahout-hdfs -Dversion=0.13.0
mvn deploy:deploy-file -Durl=file:///Users/pat/.custom-scala-m2/repo/ -Dfile=//Users/pat/mahout/math/target/mahout-math-0.13.0.jar -DgroupId=org.apache.mahout -DartifactId=mahout-math -Dversion=0.13.0
mvn deploy:deploy-file -Durl=file:///Users/pat/.custom-scala-m2/repo/ -Dfile=//Users/pat/mahout/math-scala/target/mahout-math-scala_2.11-0.13.0.jar -DgroupId=org.apache.mahout -DartifactId=mahout-math-scala_2.11 -Dversion=0.13.0
mvn deploy:deploy-file -Durl=file:///Users/pat/.custom-scala-m2/repo/ -Dfile=//Users/pat/mahout/spark/target/mahout-spark_2.11-0.13.0.jar -DgroupId=org.apache.mahout -DartifactId=mahout-spark_2.11 -Dversion=0.13.0
