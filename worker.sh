#!/bin/bash

# Threshold for minimum number of nodes
MIN_NODES=3

# Get the current number of nodes
CURRENT_NODES=$(kubectl get nodes --no-headers | wc -l)

if [ "$CURRENT_NODES" -lt "$MIN_NODES" ]; then
  echo "Number of nodes ($CURRENT_NODES) is less than the minimum required ($MIN_NODES). Adding a new node."
  minikube node add
fi
