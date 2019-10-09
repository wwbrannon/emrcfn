#!/bin/bash -xe

sudo yum clean all

sudo yum groupinstall -v -y "Development Tools"
sudo yum groupinstall -v -y "Development Libraries"

sudo yum install -v -y \
    atlas atlas-devel \
    lapack lapack-devel \
    blas blas-devel \
    openmpi openmpi-devel

