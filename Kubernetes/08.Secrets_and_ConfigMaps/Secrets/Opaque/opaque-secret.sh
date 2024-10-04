#!/bin/bash

echo "Creating secrets and consuming them using manifest files"

echo "Using kubectl to create a new secret of type Opaque..."
kubectl apply -f opaque-secret.yaml

echo "Creating a nginx pod to consume this newly created secret..."
kubectl apply -f pod.yaml

echo "Getting pod informations to see secrets consumed..."
kubectl describes pod pod-with-secrets

echo "Or, to be more explicit..."
kubectl exec -ti pod-with-secrets -- env

kubectl delete pod pod-with-secrets
kubectl delete secret opaque-secret