ARG VERSION=latest
FROM alpine:${VERSION}

# Install GCC + musl C library development headers and libraries + bash shell
RUN apk update && apk add --no-cache gcc musl-dev bash

# # Set the Working Directory
WORKDIR /workspace

# Build the C file into a Binary
RUN gcc -o bin/helloworld src/helloworld.c

# Entrypoint
CMD [ "./bin/helloworld" ]
