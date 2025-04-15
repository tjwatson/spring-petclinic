#!/bin/bash -x

sudo podman run \
    --rm \
    -p 9080:9080 \
    --cap-add=CHECKPOINT_RESTORE \
    --cap-add=SETPCAP \
    --security-opt seccomp=unconfined \
    --cpus=2 \
    libertyio/petclinic-og

