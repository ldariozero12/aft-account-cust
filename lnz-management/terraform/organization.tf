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
      scp        = ["./policies/scp/scp_organizations_noleave.json","./policies/scp/scp_s3_nopublicaccess.json"]
      ct_control = ["AWS-GR_RESTRICT_ROOT_USER"]
    }
    "/Foundational" = {
      scp        = ["./policies/scp/scp_organizations_noleave.json"]
      ct_control = ["AWS-GR_RESTRICT_ROOT_USER","AWS-GR_RESTRICT_ROOT_USER_ACCESS_KEYS"]
    }
    "/Sandbox" = {
      scp        = ["./policies/scp/scp_organizations_noleave.json"]
      ct_control = ["AWS-GR_RESTRICT_ROOT_USER"]
    }
    "/Security" = {
      scp        = ["./policies/scp/scp_organizations_noleave.json"]
      ct_control = ["AWS-GR_RESTRICT_ROOT_USER"]
    }
    "/Workloads" = {
      scp        = ["./policies/scp/scp_organizations_noleave.json"]
      ct_control = ["AWS-GR_RESTRICT_ROOT_USER"]
    }
    "/Workloads/Tst" : {
      scp        = ["./policies/scp/scp_organizations_noleave.json"]
      ct_control = ["AWS-GR_RESTRICT_ROOT_USER"]
    }
    "/Workloads/Prd" : {
      scp        = ["./policies/scp/scp_organizations_noleave.json"]
      ct_control = ["AWS-GR_RESTRICT_ROOT_USER"]
    }
    "/Workloads/Dev" : {
      scp        = ["./policies/scp/scp_organizations_noleave.json"]
      ct_control = ["AWS-GR_RESTRICT_ROOT_USER"]
    }
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
