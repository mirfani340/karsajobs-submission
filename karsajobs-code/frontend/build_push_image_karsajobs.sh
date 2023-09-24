#!/bin/bash
# Melakukan build image
docker build -t mirfani340/karsajobs-ui:latest .

# Melihat Docker images yang ada
docker images

# Rename ke nama docker images yang benar
docker tag mirfani340/karsajobs-ui:latest ghcr.io/mirfani340/karsajobs-ui:latest

# Login ke GHCR
echo $DOCKER_GHCR_PASSWORD | docker login ghcr.io -u mirfani340 --password-stdin

# Push ke GHCR
docker push ghcr.io/mirfani340/karsajobs-ui:latest