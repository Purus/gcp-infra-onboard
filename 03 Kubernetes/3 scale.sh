#!/bin/bash -xv

kubectl scale deployment nginx --replicas 3
kubectl get pods
kubectl get services
