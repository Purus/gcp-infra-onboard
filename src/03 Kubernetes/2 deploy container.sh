#!/bin/bash -xv

kubectl run nginx --image=nginx:1.10.0
kubectl get pods
kubectl expose deployment nginx --port 80 --type LoadBalancer
kubectl get services #until you get the ip
