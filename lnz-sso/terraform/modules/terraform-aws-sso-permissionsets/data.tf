# © 2024 Amazon Web Services, Inc. or its affiliates. All Rights Reserved.  
# This AWS Content is provided subject to the terms of the AWS Customer Agreement available at 
# http://aws.amazon.com/agreement or other written agreement between Customer and either
# Amazon Web Services, Inc. or Amazon Web Services EMEA SARL or both.

# Providing data regarding the AWS SSO instance being deployed
# in the landing zones (ARN and ID of the identity store)
data "aws_ssoadmin_instances" "sso_management" {}
data "aws_caller_identity" "context" {}
