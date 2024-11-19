module "nfw" {
  count                           = var.enable_network_firewall ? 1 : 0
  source                          = "./modules/terraform-aws-network-hub-nfw"
  vpc_id                          = aws_vpc.egress.id
  subnets                         = values(aws_subnet.firewall)[*].id
  enable_network_firewall_logging = var.enable_network_firewall_logging
}
