#!/bin/bash

echo Create namespace for phone-validator-frontend
kubectl create namespace phone-validator-frontend

echo Deploy phone-validator-frontend
# loadbalance
kubectl apply -f phone-validator-frontend-deployment.yaml -n phone-validator-frontend 

# alb
kubectl apply -f phone-validator-frontend-deployment-alb-ingress.yaml -n phone-validator-frontend

# nginx
kubectl apply -f phone-validator-frontend-deployment-nginx-ingress.yaml -n phone-validator-frontend 

kubectl get all -n phone-validator-frontend 
kubectl get pods -o wide -n phone-validator-frontend
kubectl get svc ingress-nginx-controller -n ingress-nginx -ojson