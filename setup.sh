#!/bin/bash

echo Create namespace for phone-validator-frontend
kubectl create namespace phone-validator-frontend

echo Deploy phone-validator-frontend
kubectl apply -f phone-validator-frontend-deployment.yaml -n phone-validator-frontend 