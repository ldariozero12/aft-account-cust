module "vpc_egress_eu_central_1" {
  source = "./modules/terraform-aws-network-hub-vpc-egress"
  providers = {
    aws = aws.eu_central_1
  }

  cidr_block = "10.241.248.0/24"
  tgw_id     = module.tgw_eu_central_1.tgw_id
  #injects the static route to egress vpc in the following TGW route tables
  tgw_route_tables = {
    "ingress"      = module.tgw_eu_central_1.tgw_route_tables["ingress"],
    "workload_dev" = module.tgw_eu_central_1.tgw_route_tables["workload_dev"],
    "workload_tst" = module.tgw_eu_central_1.tgw_route_tables["workload_tst"],
    "workload_prd" = module.tgw_eu_central_1.tgw_route_tables["workload_prd"],
    "infrastructure" = module.tgw_eu_central_1.tgw_route_tables["infrastructure"],
  }
  tgw_propagations = {
    "inter_region" = module.tgw_eu_central_1.tgw_route_tables["inter_region"],
    # "endpoints"    = "tgw-rtb-07a3b6aa1e7b6afd2"
  }
  tgw_association = module.tgw_eu_central_1.tgw_route_tables["egress"]
  # tgw_on_prem_route_table = "tgw-rtb-029718526ceb17d40"

  lz_region_cidrs         = local.ipam_pools["eu-central-1"].cidr_blocks
  enable_network_firewall = false
}


## DA Aggiungere tutte le region