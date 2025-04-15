#!/bin/bash -x

sudo podman build \
   -f Dockerfile.spring.semeru \
   -t springio/petclinic-semeru

