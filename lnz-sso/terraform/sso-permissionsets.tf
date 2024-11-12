# © 2024 Amazon Web Services, Inc. or its affiliates. All Rights Reserved.
# This AWS Content is provided subject to the terms of the AWS Customer Agreement available at
# http://aws.amazon.com/agreement or other written agreement between Customer and either
# Amazon Web Services, Inc. or Amazon Web Services EMEA SARL or both.

module "sso-permissionsets" {
  source = "./modules/terraform-aws-sso-permissionsets"

  permissionsets = {
    "global-view-only" = {
      description          = "Access for view only to all environments"
      aws_managed_policies = ["job-function/ViewOnlyAccess"]
    }
    "global-administrator" = {
      description          = "Access for administrator to all environments"
      aws_managed_policies = ["AdministratorAccess"]
    }
    "global-network-admin" = {
      description          = "Access for network administrators to all environments"
      aws_managed_policies = ["job-function/NetworkAdministrator", "ReadOnlyAccess"]
    }
    "global-security-auditor" = {
      description          = "Access for security auditor to all environments"
      aws_managed_policies = ["SecurityAudit", "ReadOnlyAccess"]
    }
    "local-poweruser" = {
      description          = "Access for PowerUser in an account"
      aws_managed_policies = ["PowerUserAccess"]
    }
    "local-read-only" = {
      description          = "Access for ReadOnly in an account"
      aws_managed_policies = ["ReadOnlyAccess"]
    }
  }
}

