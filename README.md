# terraform-tutorial

## How to install terraform on your system (linux)
[Terraform Install](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

- install-terraform:
- sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
- wget -O- https://apt.releases.hashicorp.com/gpg | \
    gpg --dearmor | \
    sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
- gpg --no-default-keyring \
    --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
    --fingerprint
- echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
    https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
    sudo tee /etc/apt/sources.list.d/hashicorp.list
- sudo apt update
- sudo apt-get install terraform
- terraform -help

## Project

- touch main.tf
- terraform init
- terraform plan
- terraform apply
- terraform destroy
- terraform validate
- terraform fmt
