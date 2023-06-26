#!/bin/bash

echo Create namespace for phone-validator-frontend
kubectl create namespace phone-validator-frontend

echo Deploy phone-validator-frontend
kubectl apply -f phone-validator-frontend-deployment.yaml -n phone-validator-frontend 



kubectl apply -f model1.yaml -n 2048-game
kubectl apply -f model2.yaml -n 2055-Test

kubectl delete -f model1.yaml 2048-game 

kubectl delete all -l app=phone-validator-backend