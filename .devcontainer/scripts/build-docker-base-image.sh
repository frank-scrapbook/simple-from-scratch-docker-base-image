#!/bin/bash
set -euo pipefail

main() {
  # Build docker image (helloworld)
  docker build -t helloworld:latest .

  # Confirm docker image (helloworld) is created
  docker images -q helloworld
}

main
