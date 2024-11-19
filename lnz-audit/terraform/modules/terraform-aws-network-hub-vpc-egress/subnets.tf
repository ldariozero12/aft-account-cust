resource "aws_subnet" "public" {
  for_each          = local.vpc_subnets.public_subnets_cidrs
  vpc_id            = aws_vpc.egress.id
  cidr_block        = each.value.cidr
  availability_zone = each.value.az
  tags              = { Name = "public-${each.value.az}" }
}

resource "aws_route_table" "public" {
  for_each = local.vpc_subnets.public_subnets_cidrs
  vpc_id   = aws_vpc.egress.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.egress.id
  }
  dynamic "route" {
    for_each = var.enable_network_firewall ? toset(var.lz_region_cidrs) : toset([])
    content {
      cidr_block      = route.key
      vpc_endpoint_id = element([for ss in tolist(module.nfw[0].network_firewall.firewall_status[0].sync_states) : ss.attachment[0].endpoint_id if ss.attachment[0].subnet_id == aws_subnet.firewall[each.key].id], 0)
    }
  }
  dynamic "route" {
    for_each = !var.enable_network_firewall ? toset(var.lz_region_cidrs) : toset([])
    content {
      cidr_block         = route.key
      transit_gateway_id = var.tgw_id
    }
  }
  tags = { Name = "public-rtb-${each.value.az}" }
}

resource "aws_route_table_association" "public" {
  for_each       = aws_subnet.public
  subnet_id      = each.value.id
  route_table_id = aws_route_table.public[each.key].id
}

# firewall subnets will be provisioned only if firewall is enabled
resource "aws_subnet" "firewall" {
  for_each          = local.vpc_subnets.firewall_subnets_cidrs
  vpc_id            = aws_vpc.egress.id
  cidr_block        = each.value.cidr
  availability_zone = each.value.az
  tags              = { Name = "firewall-${each.value.az}" }
}

resource "aws_route_table" "firewall" {
  for_each = local.vpc_subnets.firewall_subnets_cidrs
  vpc_id   = aws_vpc.egress.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.egress[each.key].id
  }
  dynamic "route" {
    for_each = toset(var.pl_private_ranges)
    content {
      destination_prefix_list_id = route.key
      transit_gateway_id         = var.tgw_id
    }
  }
  tags = { Name = "firewall-rtb-${each.value.az}" }
}

resource "aws_route_table_association" "firewall" {
  for_each       = aws_subnet.firewall
  subnet_id      = each.value.id
  route_table_id = aws_route_table.firewall[each.key].id
}


resource "aws_subnet" "tgw" {
  for_each          = local.vpc_subnets.tgw_subnets_cidrs
  vpc_id            = aws_vpc.egress.id
  cidr_block        = each.value.cidr
  availability_zone = each.value.az
  tags              = { Name = "tgw-${each.value.az}" }
}

resource "aws_route_table" "tgw" {
  for_each = local.vpc_subnets.tgw_subnets_cidrs
  vpc_id   = aws_vpc.egress.id
  dynamic "route" {
    for_each = var.enable_network_firewall ? [1] : []
    content {
      cidr_block      = "0.0.0.0/0"
      vpc_endpoint_id = element([for ss in tolist(module.nfw[0].network_firewall.firewall_status[0].sync_states) : ss.attachment[0].endpoint_id if ss.attachment[0].subnet_id == aws_subnet.firewall[each.key].id], 0)
    }
  }
  dynamic "route" {
    for_each = !var.enable_network_firewall ? [1] : []
    content {
      cidr_block     = "0.0.0.0/0"
      nat_gateway_id = aws_nat_gateway.egress[each.key].id
    }
  }

  tags = { Name = "tgw-rtb-${each.value.az}" }
}

resource "aws_route_table_association" "tgw" {
  for_each       = aws_subnet.tgw
  subnet_id      = each.value.id
  route_table_id = aws_route_table.tgw[each.key].id
}
