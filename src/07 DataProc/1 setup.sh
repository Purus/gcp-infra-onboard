#!/bin/bash -xv

cd ~
rm -rf training-data-analyst
git clone https://github.com/GoogleCloudPlatform/training-data-analyst
 

gsutil mb gs://$DEVSHELL_PROJECT_ID/
BUCKET_NAME=$DEVSHELL_PROJECT_ID

cd training-data-analyst/courses/unstructured

sed -i -e 's/BUCKET_NAME/'$BUCKET_NAME/ lab2.py

gsutil cp ./lab2* gs://$BUCKET_NAME/unstructured/