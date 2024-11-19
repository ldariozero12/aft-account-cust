# terraform-aws-tgw

This module configures the egress vpc, optionally it can create AWS Network Firewall

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_nfw"></a> [nfw](#module\_nfw) | ./modules/terraform-aws-network-hub-nfw | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_ec2_transit_gateway_route.egress](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_route) | resource |
| [aws_ec2_transit_gateway_route.onprem_rtb_egress_route](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_route) | resource |
| [aws_ec2_transit_gateway_route_table_association.egress](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_route_table_association) | resource |
| [aws_ec2_transit_gateway_route_table_propagation.propagations](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_route_table_propagation) | resource |
| [aws_ec2_transit_gateway_vpc_attachment.egress](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_vpc_attachment) | resource |
| [aws_eip.egress](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_internet_gateway.egress](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_nat_gateway.egress](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_route_table.firewall](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table.public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table.tgw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.firewall](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.tgw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_subnet.firewall](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.tgw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.egress](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |
| [aws_availability_zones.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | CIDR block for Egress VPC - Must not be set if using ipam\_pool\_id | `string` | `null` | no |
| <a name="input_enable_network_firewall"></a> [enable\_network\_firewall](#input\_enable\_network\_firewall) | Whether to enable Network Firewall | `bool` | `false` | no |
| <a name="input_enable_network_firewall_logging"></a> [enable\_network\_firewall\_logging](#input\_enable\_network\_firewall\_logging) | Whether it must configure network firewall logs | `bool` | `false` | no |
| <a name="input_ipam_pool_id"></a> [ipam\_pool\_id](#input\_ipam\_pool\_id) | ID of the IPAM pool used for Egress VPC - Must not be set if using cidr\_block | `string` | `null` | no |
| <a name="input_lz_region_cidrs"></a> [lz\_region\_cidrs](#input\_lz\_region\_cidrs) | n/a | `list(string)` | n/a | yes |
| <a name="input_netmask_length"></a> [netmask\_length](#input\_netmask\_length) | Netmask length for Egress VPC - Must not be set if using cidr\_block | `number` | `null` | no |
| <a name="input_pl_private_ranges"></a> [pl\_private\_ranges](#input\_pl\_private\_ranges) | Prefix list IDs for the private ranges | `list(string)` | `[]` | no |
| <a name="input_tgw_association"></a> [tgw\_association](#input\_tgw\_association) | TGW route table you want the Egress is associated to | `string` | n/a | yes |
| <a name="input_tgw_id"></a> [tgw\_id](#input\_tgw\_id) | ID of the AWS Transit Gateway that the Egress VPC is attached to | `string` | n/a | yes |
| <a name="input_tgw_on_prem_route_table"></a> [tgw\_on\_prem\_route\_table](#input\_tgw\_on\_prem\_route\_table) | OnPrem route table for attaching the Egress | `string` | `null` | no |
| <a name="input_tgw_propagations"></a> [tgw\_propagations](#input\_tgw\_propagations) | Map of TGW routes you want the Egress is propagated | `map(string)` | `{}` | no |
| <a name="input_tgw_route_tables"></a> [tgw\_route\_tables](#input\_tgw\_route\_tables) | Map of TGW routes you want the Egress is added | `map(string)` | `{}` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->