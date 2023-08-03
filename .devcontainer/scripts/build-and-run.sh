#!/bin/bash
set -euo pipefail

build_docker_base_image() {
    echo "Building Docker Base Image..."
    ./build-docker-base-image.sh
}

run_docker_container() {
    echo "Running Docker Container..."
    ./run-docker-container.sh
}

main() {
    # Check script exists and has executable permissions (from chmod +x)
    if [[ -x ./build_docker_base_image.sh ]]; then
      build_docker_base_image
    else
      echo "Error: script not found or not executable"
    fi

    # Check script exists and has executable permissions (from chmod +x)
    if [[ -x ./run-docker-container.sh ]]; then
      run-docker-container
    else
      echo "Error: script not found or not executable"
    fi
}

main
