#!/bin/bash

SECRETNAME="$1"
NAMESPACE="$2"
OUTPUTFILE="$3"

kubectl get secret "$SECRETNAME" -n "$NAMESPACE" -o yaml \
| kubeseal --controller-name=sealed-secrets --controller-namespace=sealed-secret --format yaml \
> "$OUTPUTFILE"