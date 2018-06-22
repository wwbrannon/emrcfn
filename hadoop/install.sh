#!/bin/bash

set -e

aws s3 cp --recursive "$1/hadoop/" .

hadoop fs -rm -r -f hdfs:/spatial/
hadoop fs -mkdir hdfs:/spatial/
hadoop fs -copyFromLocal jar/gis-tools-hadoop-2.0.jar hdfs:/spatial/

hive -f sql/spatial.sql

