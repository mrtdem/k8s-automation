#!/bin/bash -e

curl https://releases.hashicorp.com/terraform/1.0.11/terraform_1.0.11_linux_amd64.zip -o terraform_1.0.11.zip
unzip terraform_1.0.11.zip 
sudo mv terraform /usr/bin/
rm terraform_1.0.11.zip
terraform -version