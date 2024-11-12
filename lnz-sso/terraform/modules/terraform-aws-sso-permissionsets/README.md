# sso-permissionsets

This module creates permissionsets described by `permissionsets` variable. The variable defines a nested map structured like this:
```hcl
{
workload = {
  dev = {
    "std-dev-read-only" = {
      description          = "Access for read only to dev environments working in Standard model"
      inline_policy        = "${path.root}/inline_policies/std-dev-readonly.json"
      aws_managed_policies = ["ReadOnlyAccess"]
    }
    "std-dev-administrator" = {
      description          = "Access for read only to dev environments working in Standard model"
      aws_managed_policies = ["AdministratorAccess"]
    }
  }
  prd = {
    "std-prd-read-only" = {
      description          = "Access for read only to prd environments working in Standard model"
      inline_policy        = "${path.root}/inline_policies/std-prd-readonly.json"
      aws_managed_policies = ["ReadOnlyAccess"]
    }
    "std-prd-administrator" = {
      description          = "Access for read only to prd environments working in Standard model"
      aws_managed_policies = ["AdministratorAccess"]
    }
  }
}
fnd = {
  prd = {
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
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ssoadmin_managed_policy_attachment.account_actors](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssoadmin_managed_policy_attachment) | resource |
| [aws_ssoadmin_permission_set.actors_ps](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssoadmin_permission_set) | resource |
| [aws_ssoadmin_permission_set_inline_policy.actors_inline_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssoadmin_permission_set_inline_policy) | resource |
| [aws_caller_identity.context](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_ssoadmin_instances.sso_management](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssoadmin_instances) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_permissionsets"></a> [permissionsets](#input\_permissionsets) | Map of permission sets to create | <pre>map(object({<br>    description          = string<br>    inline_policy        = optional(string)<br>    aws_managed_policies = optional(list(string))<br>    session_duration     = optional(string)<br>  }))</pre> | `{}` | no |
| <a name="input_session_duration"></a> [session\_duration](#input\_session\_duration) | Default session duration for all permissionsets, can be overriden for each permissionset | `string` | `"PT4H"` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->