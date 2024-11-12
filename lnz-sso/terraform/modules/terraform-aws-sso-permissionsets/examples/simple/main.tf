module "sso-permissionsets" {
  source = "../.."

  permissionsets = {
    "std-global-read-only" = {
      description          = "Access for read only to all environments working in Standard model"
      inline_policy        = "${path.root}/inline_policies/readonly.json"
      aws_managed_policies = ["ReadOnlyAccess"]
    }
    "std-global-administrator" = {
      description          = "Access for read only to all environments working in Standard model"
      aws_managed_policies = ["AdministratorAccess"]
    }
  }
}

terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
