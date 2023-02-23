#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=three7ty9/sklearn

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u three7ty9
docker tag three7ty9/sklearn $dockerpath:latest

# Step 
# Push image to a docker repository
docker push three7ty9/sklearn:latest