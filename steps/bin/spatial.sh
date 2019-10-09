#!/bin/bash -xe

# Download other files
aws s3 cp --recursive "s3://$1/steps/" .

# Install jars
hadoop fs -rm -r -f hdfs:/spatial/
hadoop fs -mkdir hdfs:/spatial/
hadoop fs -copyFromLocal jar/bing-tile-hive-1.0.jar hdfs:/spatial/

# Run hive statements to create udfs
hive -f sql/spatial.sql

