#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag predict-data:0.1 .

# Step 2:
# List docker images
docker image ls

# Step 3:
# Run flask app
docker run  --publish 8000:8080 -it --rm --name predict-data predict-data:0.1
