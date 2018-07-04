#!/bin/bash -xe

sudo docker exec jupyterhub << "EOF"
apt-get update
apt-get install build-essential

INSTALL_DIR="/opt/conda"
CONDA="$INSTALL_DIR/bin/conda"
ACTIVATE="$INSTALL_DIR/bin/activate"
DEACTIVATE="$INSTALL_DIR/bin/deactivate"

"$CONDA" config --add channels conda-forge
"$CONDA" config --add channels pytorch

"$CONDA" create -n spark anaconda ipykernel python=3.6
source "$ACTIVATE" spark

python -m ipykernel install

"$CONDA" install -y tensorflow theano keras pytorch torchvision \
                    numpy pandas scipy blaze patsy \
                    networkx nltk scikit-learn statsmodels \
                    matplotlib seaborn bokeh \
                    ipython nbconvert nbformat \
                    beautifulsoup4 boto boto3 requests \
                    xlrd xlsxwriter xlwt \
                    psycopg2 pyodbc sqlalchemy \
                    six us tqdm sqlalchemy pandoc pandocfilters \
                    nose sympy snappy cython jinja2 lxml pyyaml \
                    pyspark

source "$DEACTIVATE"
EOF

