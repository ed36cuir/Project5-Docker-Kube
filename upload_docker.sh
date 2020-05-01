#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=ed36cuir/predict-data:0.1

# Step 2:
# Authenticate & tag
docker tag 0257b284b3d5 $dockerpath
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push ed36cuir/predict-data:0.1
