#!/bin/bash -xv

sed -i -e 's/value: apt-get update/value: apt-get update; apt-get install nginx-light -y/' mydeploy.yaml

gcloud deployment-manager deployments update my-first-depl \
   --config mydeploy.yaml
