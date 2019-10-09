#!/bin/bash -xe

# The environment file we want to install
aws s3 cp "s3://$1/config/step/setup_jupyterhub/environment.yml" .
aws s3 cp "s3://$1/config/step/setup_jupyterhub/payload.sh" .

sudo docker cp environment.yml jupyterhub:/tmp/
sudo docker exec -i jupyterhub /bin/bash < payload.sh

rm -f environment.yml payload.sh

