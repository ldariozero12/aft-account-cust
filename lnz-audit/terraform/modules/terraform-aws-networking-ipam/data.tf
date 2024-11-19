data "aws_region" "current" {}

locals {
  pools_flattened = { for e in flatten([
    for pool_name, pool in var.sub_pools : [
      for cidr_block in pool.cidr_blocks : {
        pool_name  = pool_name
        cidr_block = cidr_block
      }
    ]
  ]) : "${e.pool_name}-${replace(e.cidr_block, "/[\\.\\/]/", "-")}" => e }

  # ipam main configuration is created in the main region, in other regions is passed as variable
  ipam_scope_id = var.create_ipam ? aws_vpc_ipam.main[0].private_default_scope_id : var.ipam_main.private_default_scope_id
}
