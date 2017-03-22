/*resource "terraform_remote_state" "master_state" {
  backend = "s3"
  config {
    bucket = "${var.tf_s3_bucket}"
    region = "${var.aws_region}"
    key = "${var.environment}/${var.master_state_file}"
    encrypt = true

  }
}*/

data "terraform_remote_state" "master_state" {
  backend = "s3"
  config {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    bucket = "${var.tf_s3_bucket}"
    region = "${var.aws_region}"
    key = "${var.environment}/${var.master_state_file}"
    encrypt = true
    name = "om/${var.environment}"
    }
}
