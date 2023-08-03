# simple-from-scratch-docker-base-image
Using "FROM scratch" to build docker base image without parent image.


# macOS Steps

From Docker Docs: https://docs.docker.com/build/building/base-images/

```
$ docker run --rm -it -v $PWD:/build ubuntu:22.04

container# apt-get update && apt-get install -y build-essential
container# cd /build
container# gcc -o hello -static hello.c
container# exit

$ docker build -t hello .
$ docker run --rm hello
```
