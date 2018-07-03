#!/bin/bash -xe

# Install system packages
sudo yum -y update

sudo yum groupinstall -y "Development Tools"
sudo yum install -y ca-certificates unixODBC unixODBC-devel curl wget
sudo yum install -y libxml2-devel openssl-devel sqlite-devel python3-devel
sudo yum install -y vim

# Python packages for Spark
ANACONDA_SCRIPT="https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh"

wget "$ANACONDA_SCRIPT" -O ~/anaconda.sh
sudo bash ~/anaconda.sh -b -p /opt/anaconda
sudo /opt/anaconda/conda config --add channels conda-forge
sudo /opt/anaconda/conda config --add channels pytorch

sudo /opt/anaconda/bin/conda install -y \
                      tensorflow theano keras pytorch torchvision \
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

