#!/bin/bash -x

sudo podman run \
    --rm \
    -p 9080:8080 \
    --cpus=2 \
    springio/petclinic-temurin

