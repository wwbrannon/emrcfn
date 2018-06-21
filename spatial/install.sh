#!/bin/bash

set -e

SOURCE="s3://cortico-public/hadoop/"

aws s3 cp --recursive "$SOURCE" .
hadoop fs -mkdir hdfs:/spatial/
hadoop fs -copyFromLocal jar/gis-tools-hadoop-2.0.jar hdfs:/spatial/
hive -f sql/spatial.sql

