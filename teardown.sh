#!/bin/sh

kubectl delete -f phone-validator-backend-deployment.yaml -n phone-validator-backend  
kubectl delete ns phone-validator-backend

#kubectl delete all -l app=phone-validator-backend -n phone-validator-backend