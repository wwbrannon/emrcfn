#!/bin/bash -xe

# Install system packages
df -h
findmnt

sudo yum -y update
sudo yum groups mark convert
sudo yum groupinstall -y "Development Tools"
sudo yum install -y \
                    #autoconf automake binutils bison flex gcc gcc-c++ gettext \
                    #libtool make patch pkgconfig redhat-rpm-config rpm-build \
                    #rpm-sign byacc cscope ctags diffstat doxygen elfutils \
                    #gcc-gfortran git indent intltool patchutils rcs subversion \
                    #swig systemtap \
                    ca-certificates unixODBC unixODBC-devel curl \
                    wget libxml2-devel openssl-devel sqlite-devel python3-devel vim

# Python packages for Spark
ANACONDA_SCRIPT="https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh"

wget "$ANACONDA_SCRIPT" -O ~/anaconda.sh
sudo bash ~/anaconda.sh -b -p /opt/anaconda
sudo /opt/anaconda/bin/conda config --add channels conda-forge
sudo /opt/anaconda/bin/conda config --add channels pytorch

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

