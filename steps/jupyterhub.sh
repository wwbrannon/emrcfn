#!/bin/bash -xe

sudo docker exec -i jupyterhub /bin/bash << "EOF"
set -xe

apt-get update
apt-get install build-essential

CONDA="/opt/conda/bin/conda"

"$CONDA" install -y python=3.6
"$CONDA" install -y tensorflow theano keras pytorch torchvision \
                    numpy pandas scipy blaze patsy \
                    networkx nltk scikit-learn statsmodels \
                    matplotlib seaborn bokeh \
                    ipython nbconvert nbformat \
                    beautifulsoup4 boto boto3 requests \
                    xlrd xlsxwriter xlwt \
                    psycopg2 pyodbc sqlalchemy \
                    six us tqdm sqlalchemy pandoc pandocfilters \
                    nose sympy snappy cython jinja2 lxml pyyaml

EOF

