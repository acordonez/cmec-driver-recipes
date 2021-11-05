#!/bin/bash

# Script assumes that cmec-driver is installed in current environment

ilamb_version="2.6"

# Download ILAMB release temporarily
mkdir tmp
cd tmp
wget https://github.com/rubisco-sfa/ILAMB/archive/refs/tags/v${ilamb_version}.tar.gz
tar -xvf v2.6.tar.gz

# Copy only the needed files to ILAMB folder
mkdir ../modules/ILAMB
cp ILAMB-${ilamb_version}/contents.json ../modules/ILAMB
cp -r ILAMB-${ilamb_version}/cmec-driver ../modules/ILAMB

# Create ILAMB conda environment
conda create -n _CMEC_ilamb -c conda-forge ILAMB

# Cleanup
rm -rf ILAMB-2.6
cd ../
rm -rf tmp

