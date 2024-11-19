data "aws_organizations_organization" "current" {}

locals {
  tgw_route_tables = [
    "egress",
    "ingress",
    "workload_dev",
    "workload_tst",
    "workload_prd",
    "inter_region",
    "infrastructure"
  ]

  ipam_pools = {
    "eu-central-1" = {
      cidr_blocks = ["10.241.0.0/16"]
      sub_pools = {
        infrastructure = {
          cidr_blocks   = ["10.241.248.0/21"]
          share_with_ou = "CHANGE" # Infrastructure/Production
        }
        workloads_dev = {
          cidr_blocks                       = ["10.241.0.0/18"]
          share_with_ou                     = "CHANGE", # Workloads/Development 
          # allocation_min_netmask_length     = 23
          # allocation_default_netmask_length = 24
          # allocation_max_netmask_length     = 26
        }
        workloads_tst = {
          cidr_blocks                       = ["10.241.64.0/18"]
          share_with_ou                     = "CHANGE", # Workloads/PreProduction
          # allocation_min_netmask_length     = 23
          # allocation_default_netmask_length = 24
          # allocation_max_netmask_length     = 26
        }

        workloads_prd = {
          cidr_blocks                       = ["10.241.128.0/18"]
          share_with_ou                     = "CHANGE", # Workloads/Production
          # allocation_min_netmask_length     = 23
          # allocation_default_netmask_length = 24
          # allocation_max_netmask_length     = 26
          #TO VALIDATE WITH UNOX
        }
      }
    }
  }
}
