#!/bin/sh

kubectl delete -f phone-validator-frontend-deployment.yaml -n phone-validator-frontend  
kubectl delete ns phone-validator-frontend

kubectl delete all -l app=phone-validator-frontend -n phone-validator-frontend  