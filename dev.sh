#!/bin/bash

# Build image (solo se serve o se Dockerfile è cambiato)
docker build -t sts-container .

# Run interactive container mounting code/ and res/
docker run --rm -it \
  -v $(pwd)/code:/CDMO/code \
  -v $(pwd)/res:/CDMO/res \
  sts-container \
  /bin/bash
