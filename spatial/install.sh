#!/bin/bash

set -e

## Only do this once, on the master node
IS_MASTER=true
if [ -f /mnt/var/lib/info/instance.json ]
then
  IS_MASTER=`cat /mnt/var/lib/info/instance.json | tr -d '\n ' | sed -n 's|.*\"isMaster\":\([^,]*\).*|\1|p'`
  USER_HOME=/home/hadoop
fi

if [ "$IS_MASTER" = "false" ]; then
  exit 0
fi

## Fetch the files we need and install them
SOURCE="s3://cortico-public/hadoop/"

aws s3 cp --recursive "$SOURCE" .

hadoop fs -mkdir hdfs:/spatial/
hadoop fs -copyFromLocal jar/gis-tools-hadoop-2.0.jar hdfs:/spatial/

hive -f sql/spatial.sql

