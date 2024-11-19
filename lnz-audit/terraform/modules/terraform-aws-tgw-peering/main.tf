resource "aws_ec2_transit_gateway_peering_attachment" "inter_region" {
  provider = aws.a

  peer_region             = data.aws_region.b.name
  peer_transit_gateway_id = var.tgw_b
  transit_gateway_id      = var.tgw_a

  tags = {
    Name = "tgw-peering-${data.aws_region.a.name}-${data.aws_region.b.name}"
  }
}

resource "aws_ec2_transit_gateway_peering_attachment_accepter" "inter_region" {
  provider = aws.b

  transit_gateway_attachment_id = aws_ec2_transit_gateway_peering_attachment.inter_region.id

  tags = {
    Name = "tgw-peering-${data.aws_region.b.name}-${data.aws_region.a.name}"
  }
}

resource "aws_ec2_transit_gateway_route" "inter_region_a" {
  provider = aws.a

  for_each                       = toset(var.lz_cidrs_b)
  destination_cidr_block         = each.key
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_peering_attachment.inter_region.id
  transit_gateway_route_table_id = var.inter_region_rt_a
}

resource "aws_ec2_transit_gateway_route" "inter_region_b" {
  provider = aws.b

  for_each                       = toset(var.lz_cidrs_a)
  destination_cidr_block         = each.key
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_peering_attachment_accepter.inter_region.id
  transit_gateway_route_table_id = var.inter_region_rt_b
}
