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

module "ipam" {
  source = "./../../"

  management_account_id = "123456789012"
  organizations_id      = "o-xxxxxxxxxx"
  ipam_auto_import      = false
  create_ipam           = true
  ipam_regions          = ["eu-central-1", "eu-west-1"]
  ipam_locale           = "eu-central-1"
  pool_cidrs            = ["10.242.0.0/17"]

  # pools following the layout described here:
  # https://www.davidc.net/sites/default/subnets/subnets.html?network=10.242.0.0&mask=17&division=9.f00
  sub_pools = {
    infrastructure = {
      cidr_blocks   = ["10.242.0.0/21"]
      share_with_ou = "ou-xxxx-yyyyyyyy" # Infrastructure/Production
    }
    workloads = {
      cidr_blocks                       = ["10.242.64.0/18", "10.242.8.0/21", "10.242.16.0/20", "10.242.32.0/19"]
      share_with_ou                     = "ou-xxxx-yyyyyyyy", # Workloads/Development 
      allocation_min_netmask_length     = 23
      allocation_default_netmask_length = 24
      allocation_max_netmask_length     = 26
    }
  }
}

