#!/bin/bash -xv

export MY_ZONE=us-central1-f

gcloud container clusters create kub-cluster --zone $MY_ZONE --num-nodes 2