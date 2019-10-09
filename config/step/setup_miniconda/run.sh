#!/bin/bash -xe

cat << EOF >> /etc/spark/conf/spark-env.sh
export PYSPARK_PYTHON="$HOME/conda/bin/python"
export PYSPARK_DRIVER_PYTHON="$HOME/conda/bin/ipython"
EOF

