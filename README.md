# MLOps-IaC
Infrastructure as Code using Terraform

## Commands

```sh
terraform init
terraform fmt -check
terraform plan -var-file="dev.tfvars"
terraform apply -var-file="dev.tfvars" -auto-approve