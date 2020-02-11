#!/usr/bin/env bash

TERRAFORM_DIR=".venv/bin/terraform"
echo "Running setup"
virtualenv .venv
. .venv/bin/activate
pip install requirements.txt

if [ ! -d "${TERRAFORM_DIR}" ]; then
  mkdir "${TERRAFORM_DIR}"
fi

wget -nc -O - https://releases.hashicorp.com/terraform/0.12.20/terraform_0.12.20_linux_amd64.zip | gunzip -- > "${TERRAFORM_DIR}"/terraform
"${TERRAFORM_DIR}"/terraform -version

echo "Setup complete"
