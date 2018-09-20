#!/bin/bash -xv

gcloud deployment-manager deployments create my-first-depl \
   --config mydeploy.yaml
