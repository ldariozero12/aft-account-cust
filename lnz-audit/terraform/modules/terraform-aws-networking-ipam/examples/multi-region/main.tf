terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}

module "ipam_eu_central_1" {
  source = "./../../"

  # part that repeats for each region
  management_account_id = "123456789012"
  organizations_id      = "o-xxxxxxxxxx"
  ipam_auto_import      = false

  # ipam creation in main region
  create_ipam      = true
  ipam_regions     = ["eu-central-1", "eu-west-1"]

  # part that changes for each region
  ipam_locale = "eu-central-1"
  pool_cidrs  = ["10.242.128.0/17"]
  sub_pools = {
    infrastructure = {
      cidr_blocks   = ["10.242.96.0/21"]
      share_with_ou = "ou-xxxx-yyyyyyyy" # Infrastructure/Production
    }
    workloads_dev = {
      cidr_blocks                       = ["10.242.64.0/19"]
      share_with_ou                     = "ou-xxxx-yyyyyyyy", # Workloads/Development 
      allocation_min_netmask_length     = 23
      allocation_default_netmask_length = 24
      allocation_max_netmask_length     = 26
    }

    workloads_tst = {
      cidr_blocks                       = ["10.242.32.0/19"]
      share_with_ou                     = "ou-xxxx-yyyyyyyy", # Workloads/PreProduction
      allocation_min_netmask_length     = 23
      allocation_default_netmask_length = 24
      allocation_max_netmask_length     = 26
    }

    workloads_prd = {
      cidr_blocks                       = ["10.242.0.0/19"]
      share_with_ou                     = "ou-xxxx-yyyyyyyy", # Workloads/Production
      allocation_min_netmask_length     = 23
      allocation_default_netmask_length = 24
      allocation_max_netmask_length     = 26
    }
  }
}

module "ipam_eu_west_1" {
  source = "./../../"

  # part that repeats for each region
  management_account_id = "123456789012"
  organizations_id      = "o-xxxxxxxxxx"
  ipam_auto_import      = false

  # ipam creation in main region
  create_ipam = false

  # part that changes for each region
  ipam_locale = "eu-west-1"
  ipam_main   = module.ipam_eu_central_1.ipam_main
  pool_cidrs  = ["10.242.128.0/17"]
  sub_pools = {
    infrastructure = {
      cidr_blocks   = ["10.242.224.0/21"]
      share_with_ou = "ou-xxxx-yyyyyyyy" # Infrastructure/Production
    }

    workloads_dev = {
      cidr_blocks                       = ["10.242.192.0/19"]
      share_with_ou                     = "ou-xxxx-yyyyyyyy", # Workloads/Development 
      allocation_min_netmask_length     = 23
      allocation_default_netmask_length = 24
      allocation_max_netmask_length     = 26
    }

    workloads_tst = {
      cidr_blocks                       = ["10.242.160.0/19"]
      share_with_ou                     = "ou-xxxx-yyyyyyyy", # Workloads/PreProduction
      allocation_min_netmask_length     = 23
      allocation_default_netmask_length = 24
      allocation_max_netmask_length     = 26
    }

    workloads_prd = {
      cidr_blocks                       = ["10.242.128.0/19"]
      share_with_ou                     = "ou-xxxx-yyyyyyyy", # Workloads/Production
      allocation_min_netmask_length     = 23
      allocation_default_netmask_length = 24
      allocation_max_netmask_length     = 26
    }
  }
}

