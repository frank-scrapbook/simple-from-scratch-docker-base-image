#!/bin/bash
set -euo pipefail

main() {
  # Run docker container based on image
  docker run --rm hello:latest
}

main
