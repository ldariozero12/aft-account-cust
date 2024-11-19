output "ipam_main" {
  value = var.create_ipam ? aws_vpc_ipam.main[0] : var.ipam_main
}

output "ipam_pools_ids" {
  value = { for k, v in var.sub_pools : k => aws_vpc_ipam_pool.sub_pools[k] }
}
