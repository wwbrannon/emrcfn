#!/bin/bash -xe

echo -e << EOF >> /etc/spark/conf/spark-env.sh
\nexport PYSPARK_PYTHON="$HOME/conda/bin/python"
export PYSPARK_DRIVER_PYTHON="$HOME/conda/bin/jupyter"
export PYSPARK_DRIVER_PYTHON_OPTS='notebook --no-browser --ip=$1'
EOF

