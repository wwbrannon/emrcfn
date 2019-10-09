#!/bin/bash -xe

# Download other files
aws s3 cp "s3://$1/steps/jar/bing-tile-hive-1.0.jar" .
aws s3 cp "s3://$1/steps/jar/sql/spatial.sql" .

# Install jars
hadoop fs -rm -r -f hdfs:/spatial/
hadoop fs -mkdir hdfs:/spatial/
hadoop fs -copyFromLocal bing-tile-hive-1.0.jar hdfs:/spatial/

# Run hive statements to create udfs
hive -f spatial.sql

# Clean up
rm -f bing-tile-hive-1.0.jar spatial.sql

