#!/bin/bash -xe

# Install system packages
sudo yum -y update
sudo yum groups mark convert
sudo yum groupinstall -y "Development Tools"
sudo yum install -y ca-certificates unixODBC unixODBC-devel curl wget vim \
                    libxml2-devel openssl-devel sqlite-devel python3-devel

# Python packages for Spark
ANACONDA_SCRIPT="https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh"

INSTALL_DIR="/opt/conda"
CONDA="$INSTALL_DIR/bin/conda"
ACTIVATE="$INSTALL_DIR/bin/activate"
DEACTIVATE="$INSTALL_DIR/bin/deactivate"

wget "$ANACONDA_SCRIPT" -O ~/anaconda.sh
sudo bash ~/anaconda.sh -b -p "$INSTALL_DIR"
rm ~/anaconda.sh

sudo "$CONDA" config --add channels conda-forge
sudo "$CONDA" config --add channels pytorch

sudo "$CONDA" create -y -n spark anaconda python=3.6
sudo "$CONDA" install -y -n spark tensorflow theano keras pytorch torchvision \
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


