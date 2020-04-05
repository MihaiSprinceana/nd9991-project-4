#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
docker build -t finalproject .
docker tag finalproject:latest dondrog/finalproject:latest

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker run finalproject bash
