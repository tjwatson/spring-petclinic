#!/bin/bash -x

sudo podman build \
   -f Dockerfile.spring.temurin \
   -t springio/petclinic-temurin

