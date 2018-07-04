#!/bin/bash -xe

conda config --add channels conda-forge
conda config --add channels pytorch

/opt/anaconda/bin/conda install -y \
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

