#!/bin/bash -xv

cd ~
touch one.txt two.txt three.txt four.txt

gsutil cp one.txt gs://$DEVSHELL_PROJECT_ID/

gsutil cp *txt gs://$DEVSHELL_PROJECT_ID/