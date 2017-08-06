#!/bin/bash
# https://hub.docker.com/r/hashicorp/terraform/

source $PWD/bin/constant.sh

docker run \
  -v $PWD/infrastructure:/data \
  -v $PWD/secret.tfvars:/secret.tfvars \
  -w /data \
  -i -t \
  hashicorp/terraform:light "${@}" -var-file="/secret.tfvars"
