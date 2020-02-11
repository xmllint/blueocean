#!/usr/bin/env bash

TERRAFORM_DIR=".venv/bin/terraform"
echo "Running setup"

virtualenv -p python3 .venv
. .venv/bin/activate
pip3 install awscli

if [ ! -d "${TERRAFORM_DIR}" ]; then
  mkdir "${TERRAFORM_DIR}"
fi

wget -qnc -O - https://releases.hashicorp.com/terraform/0.12.20/terraform_0.12.20_linux_amd64.zip | gunzip -- > "${TERRAFORM_DIR}"/terraform

echo "Setup complete"
