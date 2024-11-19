# IPAM resources are created in one region, we just assign the locale for the target regions, hence we use just one provider

#### eu-central-1 ####
module "ipam_eu_central_1" {
  source = "./modules/terraform-aws-networking-ipam"

  # part that repeats for each region
  management_account_id = "741448940700"
  organizations_id      = "o-1j3niatuno"
  ipam_auto_import      = false

  # ipam creation in main region
  create_ipam  = true
  ipam_regions = ["eu-central-1"]

  # part that changes for each region
  ipam_locale = "eu-central-1"
  pool_cidrs  = local.ipam_pools["eu-central-1"].cidr_blocks
  sub_pools   = local.ipam_pools["eu-central-1"].sub_pools
}

resource "aws_ssm_parameter" "eu-central-1-pools" {
  for_each    = module.ipam_eu_central_1.ipam_pools_ids
  name        = "/ipam/pool/eu-central-1/${each.key}"
  description = "IPAM Pools"
  type        = "String"
  value       = module.ipam_eu_central_1.ipam_pools_ids[each.key].id
}