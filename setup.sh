#!/bin/bash

echo Create namespace for phone-validator-frontend
kubectl create namespace phone-validator-frontend

echo Deploy phone-validator-frontend
kubectl apply -f phone-validator-frontend-deployment.yaml -n phone-validator-frontend 
kubectl apply -f phone-validator-frontend-deployment-ingress.yaml -n phone-validator-frontend 

kubectl get all -n phone-validator-frontend 