#!/bin/bash

# Script assumes that cmec-driver is installed in current environment

ilamb_version="2.6"

# Download ILAMB release temporarily
tmp_dir=$CMEC_TMP_DIR
cd ${tmp_dir}
wget https://github.com/rubisco-sfa/ILAMB/archive/refs/tags/v${ilamb_version}.tar.gz
tar -xvf v2.6.tar.gz

# Copy only the needed files to ILAMB folder
module_dir=${CMEC_MODULE_DIR}
rm -rf ${module_dir}
mkdir ${module_dir}
cp ILAMB-${ilamb_version}/contents.json ${module_dir}
cp -r ILAMB-${ilamb_version}/cmec-driver ${module_dir}

# Create ILAMB conda environment
conda create -n _CMEC_ilamb -c conda-forge ILAMB
