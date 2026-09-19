#!/bin/bash

IMAGE="uhkarthik/simple-python-flask-app:latest"

docker pull $IMAGE

docker rm -f flask-app 2>/dev/null || true

docker run -d --name flask-app -p 5000:5000 $IMAGE
