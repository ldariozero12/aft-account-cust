# terraform-aws-tgw

This module configures peering between two Transit Gateways. It also creates routes in respective Route Tables for inter-region traffic, if variables are passed.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.7.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws.a"></a> [aws.a](#provider\_aws.a) | ~> 5.0 |
| <a name="provider_aws.b"></a> [aws.b](#provider\_aws.b) | ~> 5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ec2_transit_gateway_peering_attachment.inter_region](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_peering_attachment) | resource |
| [aws_ec2_transit_gateway_peering_attachment_accepter.inter_region](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_peering_attachment_accepter) | resource |
| [aws_ec2_transit_gateway_route.inter_region_a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_route) | resource |
| [aws_ec2_transit_gateway_route.inter_region_b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_route) | resource |
| [aws_region.a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |
| [aws_region.b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_inter_region_rt_a"></a> [inter\_region\_rt\_a](#input\_inter\_region\_rt\_a) | TGW Inter-Region Route Table ID in region A | `string` | `null` | no |
| <a name="input_inter_region_rt_b"></a> [inter\_region\_rt\_b](#input\_inter\_region\_rt\_b) | TGW Inter-Region Route Table ID in region B | `string` | `null` | no |
| <a name="input_lz_cidrs_a"></a> [lz\_cidrs\_a](#input\_lz\_cidrs\_a) | CIDR blocks assigned to region A | `list(string)` | `[]` | no |
| <a name="input_lz_cidrs_b"></a> [lz\_cidrs\_b](#input\_lz\_cidrs\_b) | CIDR blocks assigned to region B | `list(string)` | `[]` | no |
| <a name="input_tgw_a"></a> [tgw\_a](#input\_tgw\_a) | ID of the Transit Gateway A | `string` | n/a | yes |
| <a name="input_tgw_b"></a> [tgw\_b](#input\_tgw\_b) | ID of the Transit Gateway B | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->