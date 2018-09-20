#!/bin/bash -xv

gcloud deployment-manager deployments update my-first-depl \
   --config mydeploy.yaml
