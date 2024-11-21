module "org" {
  source = "./modules/terraform-aws-organization"
  providers = {
    aws.ct_management = aws.ct_management
  }

  organizational_units = {
    "Root" = {
      ct_control = ["AWS-GR_RESTRICT_ROOT_USER"]
    }
    "/Aft" = {
      scp        = [
          "./policies/scp/scp_billing_nomodify.json",
          "./policies/scp/scp_cloudtrail_disabling.json",
          "./policies/scp/scp_config_disabling.json",
          "./policies/scp/scp_ebs_encryption.json",
          "./policies/scp/scp_guardduty_disabling.json",
          "./policies/scp/scp_iam_nousernokeys.json",
          "./policies/scp/scp_organizations_noleave.json",
          "./policies/scp/scp_s3_nopublicaccess.json",
          "./policies/scp/scp_securityhub_disabling.json"
        ]
      ct_control = [
          "AWS-GR_RESTRICT_ROOT_USER",
          "AWS-GR_RESTRICT_ROOT_USER_ACCESS_KEYS",
          "AWS-GR_AUDIT_BUCKET_ENCRYPTION_ENABLED",
          "AWS-GR_AUDIT_BUCKET_LOGGING_ENABLED",
          "AWS-GR_AUDIT_BUCKET_POLICY_CHANGES_PROHIBITED"
        ]
    }
    "/Foundational" = {
      scp        = [
          "./policies/scp/scp_billing_nomodify.json",
          "./policies/scp/scp_cloudtrail_disabling.json",
          "./policies/scp/scp_config_disabling.json",
          "./policies/scp/scp_ebs_encryption.json",
          "./policies/scp/scp_guardduty_disabling.json",
          "./policies/scp/scp_iam_nousernokeys.json",
          "./policies/scp/scp_organizations_noleave.json",
          "./policies/scp/scp_s3_nopublicaccess.json",
          "./policies/scp/scp_securityhub_disabling.json"
        ]
      ct_control = [
          "AWS-GR_RESTRICT_ROOT_USER",
          "AWS-GR_RESTRICT_ROOT_USER_ACCESS_KEYS",
          "AWS-GR_AUDIT_BUCKET_ENCRYPTION_ENABLED",
          "AWS-GR_AUDIT_BUCKET_LOGGING_ENABLED",
          "AWS-GR_AUDIT_BUCKET_POLICY_CHANGES_PROHIBITED"
        ]
    }
    "/Sandbox" = {
      scp        = [
          "./policies/scp/scp_billing_nomodify.json",
          "./policies/scp/scp_cloudtrail_disabling.json",
          "./policies/scp/scp_config_disabling.json",
          "./policies/scp/scp_ebs_encryption.json",
          "./policies/scp/scp_guardduty_disabling.json",
          "./policies/scp/scp_iam_nousernokeys.json",
          "./policies/scp/scp_organizations_noleave.json",
          "./policies/scp/scp_s3_nopublicaccess.json",
          "./policies/scp/scp_securityhub_disabling.json"
        ]
      ct_control = [
          "AWS-GR_RESTRICT_ROOT_USER",
          "AWS-GR_RESTRICT_ROOT_USER_ACCESS_KEYS",
          "AWS-GR_AUDIT_BUCKET_ENCRYPTION_ENABLED",
          "AWS-GR_AUDIT_BUCKET_LOGGING_ENABLED",
          "AWS-GR_AUDIT_BUCKET_POLICY_CHANGES_PROHIBITED"
        ]
    }
    "/Security" = {
      scp        = [
          "./policies/scp/scp_billing_nomodify.json",
          "./policies/scp/scp_cloudtrail_disabling.json",
          "./policies/scp/scp_config_disabling.json",
          "./policies/scp/scp_ebs_encryption.json",
          "./policies/scp/scp_guardduty_disabling.json",
          "./policies/scp/scp_iam_nousernokeys.json",
          "./policies/scp/scp_organizations_noleave.json",
          "./policies/scp/scp_s3_nopublicaccess.json",
          "./policies/scp/scp_securityhub_disabling.json"
        ]
      ct_control = [
          "AWS-GR_RESTRICT_ROOT_USER",
          "AWS-GR_RESTRICT_ROOT_USER_ACCESS_KEYS",
          "AWS-GR_AUDIT_BUCKET_ENCRYPTION_ENABLED",
          "AWS-GR_AUDIT_BUCKET_LOGGING_ENABLED",
          "AWS-GR_AUDIT_BUCKET_POLICY_CHANGES_PROHIBITED"
        ]
    }
    "/Workloads" = {
      scp        = [
          "./policies/scp/scp_billing_nomodify.json",
          "./policies/scp/scp_cloudtrail_disabling.json",
          "./policies/scp/scp_config_disabling.json",
          "./policies/scp/scp_ebs_encryption.json",
          "./policies/scp/scp_guardduty_disabling.json",
          "./policies/scp/scp_iam_nousernokeys.json",
          "./policies/scp/scp_organizations_noleave.json",
          "./policies/scp/scp_s3_nopublicaccess.json",
          "./policies/scp/scp_securityhub_disabling.json"
        ]
      ct_control = [
          "AWS-GR_RESTRICT_ROOT_USER",
          "AWS-GR_RESTRICT_ROOT_USER_ACCESS_KEYS",
          "AWS-GR_AUDIT_BUCKET_ENCRYPTION_ENABLED",
          "AWS-GR_AUDIT_BUCKET_LOGGING_ENABLED",
          "AWS-GR_AUDIT_BUCKET_POLICY_CHANGES_PROHIBITED"
        ]
    }
    "/Workloads/Tst" : {}
    "/Workloads/Prd" : {}
    "/Workloads/Dev" : {}
  }

  enable_ram_sharing = true

  org_readonly_accounts = [
    "717279706166" # aft deployment account ID
  ]

  # https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services_list.html?icmpid=docs_orgs_console
  delegations = {
    # "account.amazonaws.com"               = "" # AWS Account Management
    # "mgn.amazonaws.com"                   = "" # AWS Application Migration Service
    # "auditmanager.amazonaws.com"          = "" # AWS Audit Manager
    # "backup.amazonaws.com"                = "" # AWS Backup
    # "cloudformation.amazonaws.com"        = "" # AWS CloudFormation StackSets
    # "cloudtrail.amazonaws.com"            = "" # AWS CloudTrail
    # "compute-optimizer.amazonaws.com"     = "" # AWS Compute Optimizer
    # "config.amazonaws.com"                = "" # AWS Config
    # "cost-optimization-hub.amazonaws.com" = "" # AWS Cost Optimization Hub
    # "detective.amazonaws.com"             = "" # Amazon Detective
    # "devops-guru.amazonaws.com"           = "" # Amazon DevOps Guru
    # "fms.amazonaws.com"                   = "" # AWS Firewall Manager
    # "guardduty.amazonaws.com"             = "" # Amazon GuardDuty
    # "health.amazonaws.com"                = "" # AWS Health
    # "access-analyzer.amazonaws.com"       = "" # IAM Access Analyzer
    # "inspector2.amazonaws.com"            = "" # Amazon Inspector
    # "securityhub.amazonaws.com"           = "" # AWS Security Hub
    # "ipam.amazonaws.com"                  = "" # Amazon VPC IP Address Manager (IPAM)
    # "reachability-analyzer.amazonaws.com" = "" # Amazon VPC Reachability Analyzer
    "sso.amazonaws.com" = "565393065473"
  }
}
