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

rad resource-type create postgreSqlDatabases -f ./radius/data/postgresql/types.yaml
rad recipe register default --environment dev --resource-type Radius.Data/postgreSqlDatabases --template-kind bicep --template-path ghcr.io/willdavsmith/radius/recipes/postgresql:2.0.0

echo "Development environment setup complete."
