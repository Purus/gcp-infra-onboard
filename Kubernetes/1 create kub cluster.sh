#!/bin/bash -xv

export MY_ZONE=us-central1-f

gcloud container clusters create webfrontend --zone $MY_ZONE --num-nodes 2