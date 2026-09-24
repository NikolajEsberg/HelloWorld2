#!/bin/bash
set -e
docker build -t mit-image2 .
docker run -d --name mit-image-container -p 8000:8000 mit-image2
sleep 2
curl http://localhost:8000
docker rm -f mit-image-container

