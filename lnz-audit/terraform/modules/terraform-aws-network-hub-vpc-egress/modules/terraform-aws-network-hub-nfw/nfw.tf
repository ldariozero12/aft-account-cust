resource "aws_networkfirewall_firewall_policy" "nfw" {
  name = "egress-firewall-policy"
  firewall_policy {
    stateless_default_actions          = ["aws:forward_to_sfe"]
    stateless_fragment_default_actions = ["aws:forward_to_sfe"]
    stateful_engine_options {
      rule_order = "STRICT_ORDER"
    }
    stateful_default_actions = ["aws:drop_strict", "aws:alert_strict"]
  }
  lifecycle {
    ignore_changes = [firewall_policy]
  }
}

resource "aws_networkfirewall_firewall" "nfw" {
  name                     = var.name
  firewall_policy_arn      = aws_networkfirewall_firewall_policy.nfw.arn
  delete_protection        = true
  subnet_change_protection = true
  vpc_id                   = var.vpc_id
  dynamic "subnet_mapping" {
    for_each = { for subnet in var.subnets : subnet => subnet }
    content {
      subnet_id = subnet_mapping.key
    }
  }
}

resource "aws_networkfirewall_logging_configuration" "nfw" {
  count = var.enable_network_firewall_logging ? 1 : 0

  firewall_arn = aws_networkfirewall_firewall.nfw.arn
  logging_configuration {
    log_destination_config {
      log_destination = {
        bucketName = aws_s3_bucket.nfw[0].bucket
        prefix     = "alert/${data.aws_region.current.name}"
      }
      log_destination_type = "S3"
      log_type             = "ALERT"
    }
    log_destination_config {
      log_destination = {
        bucketName = aws_s3_bucket.nfw[0].bucket
        prefix     = "flow/${data.aws_region.current.name}"
      }
      log_destination_type = "S3"
      log_type             = "FLOW"
    }
  }
}
