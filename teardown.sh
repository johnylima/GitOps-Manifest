#!/bin/sh

kubectl delete -f phone-validator-frontend-deployment.yaml -n phone-validator-frontend  
kubectl delete ns phone-validator-frontend