# opsmgr-terraform
Terraform to deploy Pivotal Operations Manager (currently AWS Only)

Quick and dirty terraform to deploy OpsManager into an existing VPC.

Create an S3 bucket to hold your [Terraform](https://terraform.io) state.

Update the `.envrc.example` with your values and rename it to `.envrc`. 

If you're using [direnv](https://direnv.net/) run `direnv allow`.

Otherwise, `source .envrc`.

Run `./init.sh` to setup your remote config.

Then `terraform plan && terraform apply`.
