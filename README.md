# opsmgr-terraform
Terraform to deploy Pivotal Operations Manager

Quick and dirty terraform to deploy OpsManager into an existing VPC

Update the `.envrc.example` with your values and rename it to `.envrc`. 

If you're using [direnv](https://direnv.net/) run `direnv allow`.

Otherwise, `source .envrc`.

Then `terraform plan && terraform apply`.
