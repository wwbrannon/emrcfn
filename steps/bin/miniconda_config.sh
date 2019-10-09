#!/bin/bash -xe

echo -e << EOF >> /etc/spark/conf/spark-env.sh
export PYSPARK_PYTHON=/home/hadoop/conda/bin/python
export PYSPARK_DRIVER_PYTHON=/home/hadoop/conda/bin/jupyter
export PYSPARK_DRIVER_PYTHON_OPTS='notebook --no-browser --ip=$1'
EOF

