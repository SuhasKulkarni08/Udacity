#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
 dockerpath="suhask1/udacity_ml_api"

# Step 2:  
# Authenticate & tag
docker login --username suhask1
docker tag udacity_ml_api $dockerpath
echo "Docker ID and Image: $dockerpath"
# Step 3:
# Push image to a docker repository
docker image push $dockerpath
