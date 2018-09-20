#!/bin/bash -xv

gcloud container clusters create webfrontend --zone $MY_ZONE --num-nodes 2