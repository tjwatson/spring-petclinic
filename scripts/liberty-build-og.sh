#!/bin/bash -x

sudo podman build \
   -f Dockerfile.liberty.og \
   -t libertyio/petclinic-og \
   --cap-add=CHECKPOINT_RESTORE \
   --cap-add=SYS_PTRACE\
   --cap-add=SETPCAP \
   --security-opt seccomp=unconfined .

