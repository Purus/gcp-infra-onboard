#!/bin/bash -xv

gcloud dataproc clusters create hadoop-cluster --zone us-central1-c --num-workers 2 --project $DEVSHELL_PROJECT_ID