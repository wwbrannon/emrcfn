#!/bin/bash -xe

# Install system packages in the container
apt-get update && apt-get install -y build-essential git

# Ensure we have the same environment installed on the nodes
# NOTE: assumes file copied to /tmp by other script
conda env update -n base --file /tmp/environment.yml
chown -R jovyan:users .cache .local # this can get messed up and block spawn
rm /tmp/environment.yml

