resource "aws_ssm_parameter" "tgw_eu_central_1" {
  name        = "/tgw/eu-central-1/tgw_id"
  description = "TGW ID for tgw in eu-central-1"
  type        = "String"
  value       = module.tgw_eu_central_1.tgw_id
}

resource "aws_ssm_parameter" "tgw_eu_central_1_route_tables" {
  for_each = module.tgw_eu_central_1.tgw_route_tables

  name        = "/tgw/eu-central-1/route-tables/${each.key}"
  description = "TGW RouteTables for tgw-eu-central-1"
  type        = "String"
  value       = each.value
}
