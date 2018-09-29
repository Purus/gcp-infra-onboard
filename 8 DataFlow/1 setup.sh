#!/bin/bash -xv

git clone https://github.com/GoogleCloudPlatform/training-data-analyst
 

gsutil mb gs://$DEVSHELL_PROJECT_ID/

sudo training-data-analyst/courses/data_analysis/lab2/python/install_packages.sh

