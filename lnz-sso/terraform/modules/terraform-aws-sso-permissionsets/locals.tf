# © 2024 Amazon Web Services, Inc. or its affiliates. All Rights Reserved.  
# This AWS Content is provided subject to the terms of the AWS Customer Agreement available at 
# http://aws.amazon.com/agreement or other written agreement between Customer and either
# Amazon Web Services, Inc. or Amazon Web Services EMEA SARL or both.


locals {
  # Data of AWS SSO instance in the LZ 
  sso_instance_arn = tolist(data.aws_ssoadmin_instances.sso_management.arns)[0]

  # Parsing actors map into a list for the managed policy
  account_actor_ps_managed_policies = flatten([for ps_key, ps_values in var.permissionsets : [
    for aws_managed_policy in ps_values.aws_managed_policies : {
      ps_name            = ps_key
      aws_managed_policy = aws_managed_policy
    }] if ps_values.aws_managed_policies != null
  ])
}

