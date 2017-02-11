#!/bin/bash

MINICONDA=Miniconda2-latest-Linux-x86_64.sh
PREFIX=/conda

set -e
cd /tmp

# yum updates and prereqs
yum update -y
yum install -y bzip2 patch redhat-lsb-core tree unzip wget which zip

# install miniconda
wget https://repo.continuum.io/miniconda/$MINICONDA
bash $MINICONDA -b -p $PREFIX
conda install -y conda-build anaconda-client gcc

# cleanup
yum clean all
conda clean -ay
rm -rf /tmp/*
