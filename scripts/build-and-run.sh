#!/bin/bash
set -euo pipefail

echo "Building docker base image..."
docker build -t helloworld:latest .

echo "Run docker base image as a container..."
docker run --rm helloworld:latest
