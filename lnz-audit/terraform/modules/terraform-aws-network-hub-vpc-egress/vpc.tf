#trivy:ignore:avd-aws-0178 - enable vpc flow logs
resource "aws_vpc" "egress" {
  ipv4_ipam_pool_id    = var.ipam_pool_id
  ipv4_netmask_length  = var.netmask_length
  cidr_block           = var.cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags                 = { Name = "vpc-egress" }
}

resource "aws_internet_gateway" "egress" {
  vpc_id = aws_vpc.egress.id
  tags   = { Name = "egress-vpc-igw" }
}

resource "aws_eip" "egress" {
  for_each = local.vpc_subnets.public_subnets_cidrs
  tags     = { Name = "nat-gateway-${each.value.az}" }
}

resource "aws_nat_gateway" "egress" {
  for_each      = local.vpc_subnets.public_subnets_cidrs
  allocation_id = aws_eip.egress[each.key].id
  subnet_id     = aws_subnet.public[each.key].id
  tags          = { Name = "nat-gateway-${each.value.az}" }
}
