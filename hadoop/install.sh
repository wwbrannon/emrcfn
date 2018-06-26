#!/bin/bash

set -e

aws s3 cp --recursive "s3://$1/hadoop/" .

hadoop fs -rm -r -f hdfs:/spatial/
hadoop fs -mkdir hdfs:/spatial/
hadoop fs -copyFromLocal jar/bing-tile-hive-1.0.jar hdfs:/spatial/

hive -f sql/spatial.sql

