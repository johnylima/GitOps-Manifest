#!/bin/bash

echo Create namespace for phone-validator-backend
kubectl create namespace phone-validator-backend

echo Deploy phone-validator-backend
kubectl apply -f phone-validator-backend-deployment.yaml -n phone-validator-backend 