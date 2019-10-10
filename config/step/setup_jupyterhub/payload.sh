#!/bin/bash -xe

# Install system packages in the container
apt-get update && apt-get install -y build-essential

# Ensure we have the same environment installed on the nodes
# NOTE: assumes file copied to /tmp by other script
sudo -u jovyan conda env update -n base --file /tmp/environment.yml
rm /tmp/environment.yml

