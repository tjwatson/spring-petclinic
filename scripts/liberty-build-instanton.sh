#!/bin/bash -x

sudo podman build \
   -f Dockerfile.liberty.instanton \
   -t libertyio/petclinic \
   --no-cache \
   --cap-add=CHECKPOINT_RESTORE \
   --cap-add=SYS_PTRACE\
   --cap-add=SETPCAP \
   --security-opt seccomp=unconfined .


