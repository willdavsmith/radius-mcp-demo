#!/bin/bash
set -e

# Set up Kubernetes cluster
kind create cluster --name radius-dev

# Install and set up Radius
rad install kubernetes
sleep 5
rad group create default
sleep 5
rad env create dev --group default
rad workspace create kubernetes radius-dev --context kind-radius-dev --group default --environment dev --force

echo "Development environment setup complete."
