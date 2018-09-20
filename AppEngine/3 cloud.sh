#!/bin/bash -xv

cd appengine-guestbook-python

gcloud app deploy ./index.yaml ./app.yaml