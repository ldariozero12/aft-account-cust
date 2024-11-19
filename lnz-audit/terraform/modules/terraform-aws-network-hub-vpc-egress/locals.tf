locals {
  vpc_subnets = {
    public_subnets_cidrs = {
      "az-a" = {
        cidr = cidrsubnet(aws_vpc.egress.cidr_block, 4, 0)
        az   = data.aws_availability_zones.current.names[0]
      },
      "az-b" = {
        cidr = cidrsubnet(aws_vpc.egress.cidr_block, 4, 1)
        az   = data.aws_availability_zones.current.names[1]
      },
      "az-c" = {
        cidr = cidrsubnet(aws_vpc.egress.cidr_block, 4, 2)
        az   = data.aws_availability_zones.current.names[2]
      }
    },
    firewall_subnets_cidrs = var.enable_network_firewall ? {
      "az-a" = {
        cidr = cidrsubnet(aws_vpc.egress.cidr_block, 4, 3)
        az   = data.aws_availability_zones.current.names[0]
      },
      "az-b" = {
        cidr = cidrsubnet(aws_vpc.egress.cidr_block, 4, 4)
        az   = data.aws_availability_zones.current.names[1]
      },
      "az-c" = {
        cidr = cidrsubnet(aws_vpc.egress.cidr_block, 4, 5)
        az   = data.aws_availability_zones.current.names[2]
      }
    } : {},
    tgw_subnets_cidrs = {
      "az-a" = {
        cidr = cidrsubnet(aws_vpc.egress.cidr_block, 4, 12)
        az   = data.aws_availability_zones.current.names[0]
      },
      "az-b" = {
        cidr = cidrsubnet(aws_vpc.egress.cidr_block, 4, 13)
        az   = data.aws_availability_zones.current.names[1]
      },
      "az-c" = {
        cidr = cidrsubnet(aws_vpc.egress.cidr_block, 4, 14)
        az   = data.aws_availability_zones.current.names[2]
      }
    }
  }
}
