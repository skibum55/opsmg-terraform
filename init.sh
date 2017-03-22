#!/bin/bash
# https://github.com/hashicorp/terraform/issues/3692
terraform init --backend-config="region=${TF_VAR_aws_region}" \
    --backend-config="bucket=${TF_VAR_tf_s3_bucket}" \
    --backend-config="key=${TF_VAR_environment}/${TF_VAR_master_state_file}" \
    --backend-config="access_key=${TF_VAR_aws_access_key}" \
    --backend-config="secret_key=${TF_VAR_aws_secret_key}" \
    --backend-config="encrypt=true"
    #--backend-config=s3backend.config
    # --backend=s3
