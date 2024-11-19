
##################
# TGW Attachment
##################

resource "aws_ec2_transit_gateway_vpc_attachment" "egress" {
  subnet_ids                                      = [for subnet in aws_subnet.tgw : subnet.id]
  transit_gateway_id                              = var.tgw_id
  vpc_id                                          = aws_vpc.egress.id
  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false
  appliance_mode_support                          = "enable"
  tags                                            = { Name = "tgw-egress-vpc-attachment" }
}

##################
# TGW Association
##################

resource "aws_ec2_transit_gateway_route_table_association" "egress" {
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.egress.id
  transit_gateway_route_table_id = var.tgw_association
}

###################
# TGW Propagations
###################

resource "aws_ec2_transit_gateway_route_table_propagation" "propagations" {
  for_each                       = var.tgw_propagations
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.egress.id
  transit_gateway_route_table_id = each.value
}

#############
# TGW Routes
#############

resource "aws_ec2_transit_gateway_route" "egress" {
  for_each                       = var.tgw_route_tables
  destination_cidr_block         = "0.0.0.0/0"
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.egress.id
  transit_gateway_route_table_id = each.value
}

resource "aws_ec2_transit_gateway_route" "onprem_rtb_egress_route" {
  for_each                       = var.tgw_on_prem_route_table != null ? toset(var.lz_region_cidrs) : toset([])
  destination_cidr_block         = each.key
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.egress.id
  transit_gateway_route_table_id = var.tgw_on_prem_route_table
}
