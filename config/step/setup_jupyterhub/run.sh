#!/bin/bash -xe

# The environment file we want to install
aws s3 cp "s3://$1/config/step/setup_jupyterhub/environment.yml" .
aws s3 cp "s3://$1/config/step/setup_jupyterhub/payload.sh" .

sudo docker cp environment.yml jupyterhub:/tmp/
sudo docker exec -i jupyterhub /bin/bash < payload.sh

# Installing all this stuff does something bad to the
# running jupyterhub process in the container, so let's
# just restart it rather than worry about avoiding that
sudo docker restart jupyterhub

rm -f environment.yml payload.sh

