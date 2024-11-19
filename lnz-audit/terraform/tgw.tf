# © 2024 Amazon Web Services, Inc. or its affiliates. All Rights Reserved.
# This AWS Content is provided subject to the terms of the AWS Customer Agreement available at
# http://aws.amazon.com/agreement or other written agreement between Customer and either
# Amazon Web Services, Inc. or Amazon Web Services EMEA SARL or both.

module "tgw_eu_central_1" {
  source = "./modules/terraform-aws-tgw"
  providers = {
    aws = aws.eu_central_1
  }

  name         = "eu_central_1"
  route_tables = local.tgw_route_tables

  sharing_to_principals = [
    data.aws_organizations_organization.current.arn # sharing the TGW with the whole org
  ]
}