module "sso-permissionsets" {
  source = "../.."

  permissionsets = {
    "std-dev-read-only" = {
      description          = "Access for read only to dev environments working in Standard model"
      inline_policy        = "${path.root}/inline_policies/std-dev-readonly.json"
      aws_managed_policies = ["ReadOnlyAccess"]
    }
    "std-dev-administrator" = {
      description          = "Access for read only to dev environments working in Standard model"
      aws_managed_policies = ["AdministratorAccess"]
    }
    "std-prd-read-only" = {
      description          = "Access for read only to prd environments working in Standard model"
      inline_policy        = "${path.root}/inline_policies/std-prd-readonly.json"
      aws_managed_policies = ["ReadOnlyAccess"]
    }
    "std-prd-administrator" = {
      description          = "Access for read only to prd environments working in Standard model"
      aws_managed_policies = ["AdministratorAccess"]
    }
    "fnd-prd-read-only" = {
      description          = "Access for read only to prd environments working in Foundational model"
      inline_policy        = "${path.root}/inline_policies/fnd-prd-readonly.json"
      aws_managed_policies = ["ReadOnlyAccess"]
    }
    "fnd-prd-administrator" = {
      description          = "Access for read only to prd environments working in Foundational model"
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
