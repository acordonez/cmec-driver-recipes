#!/bin/bash

# Script assumes that cmec-driver is installed in current environment

# Download ILAMB release temporarily
cd tmp
wget https://github.com/rubisco-sfa/ILAMB/archive/refs/tags/v2.6.tar.gz
tar -xvf v2.6.tar.gz

# Copy only the needed files to ILAMB folder
mkdir ../ILAMB
cp ILAMB-2.6/contents.json ../ILAMB
cp -r ILAMB-2.6/cmec-driver ../ILAMB

# Create ILAMB conda environment
conda create -n _CMEC_ilamb -c conda-forge ILAMB

# Cleanup
rm -rf ILAMB-2.6

