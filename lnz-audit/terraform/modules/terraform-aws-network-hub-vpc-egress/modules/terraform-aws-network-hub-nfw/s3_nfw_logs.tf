#trivy:ignore:avd-aws-0089 - s3-bucket-logging
#trivy:ignore:avd-aws-0090 - s3-bucket-versioning
resource "aws_s3_bucket" "nfw" {
  count = var.enable_network_firewall_logging ? 1 : 0

  bucket = "nfw-logs-${data.aws_caller_identity.context.id}"

  tags = {
    "Name" = "nfw-logs-${data.aws_caller_identity.context.id}"
  }
}

resource "aws_s3_bucket_policy" "nfw" {
  count = var.enable_network_firewall_logging ? 1 : 0

  bucket = aws_s3_bucket.nfw[0].id
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "AWSLogDeliveryWrite",
            "Effect": "Allow",
            "Principal": {"Service": "delivery.logs.amazonaws.com"},
            "Action": "s3:PutObject",
            "Resource": "${aws_s3_bucket.nfw[0].arn}/*",
            "Condition": {"StringEquals": {"s3:x-amz-acl": "bucket-owner-full-control"}}
        },
        {
            "Sid": "AWSLogDeliveryAclCheck",
            "Effect": "Allow",
            "Principal": {"Service": "delivery.logs.amazonaws.com"},
            "Action": "s3:GetBucketAcl",
            "Resource": "${aws_s3_bucket.nfw[0].arn}"
        }
    ]
}
EOF
}

resource "aws_s3_bucket_server_side_encryption_configuration" "nfw-encryption" {
  count = var.enable_network_firewall_logging ? 1 : 0

  bucket = aws_s3_bucket.nfw[0].id

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.encrypt-primary-region[0].arn
      sse_algorithm     = "aws:kms"
    }
  }
}


resource "aws_s3_bucket_public_access_block" "nfw" {
  count = var.enable_network_firewall_logging ? 1 : 0

  bucket = aws_s3_bucket.nfw[0].id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# KMS Resources

resource "aws_kms_key" "encrypt-primary-region" {
  count = var.enable_network_firewall_logging ? 1 : 0

  description             = "s3 key."
  deletion_window_in_days = 30
  enable_key_rotation     = "true"
  tags = {
    "Name" = "${aws_s3_bucket.nfw[0].bucket}-kms-key"
  }
}

resource "aws_kms_key_policy" "encrypt-primary-region" {
  count = var.enable_network_firewall_logging ? 1 : 0

  key_id = aws_kms_key.encrypt-primary-region[0].id
  policy = jsonencode({
    Id = "example"
    Statement = [
      {
        Action = "kms:*"
        Effect = "Allow"
        Principal = {
          AWS = data.aws_caller_identity.context.account_id
        }

        Resource = "*"
        Sid      = "Enable IAM User Permissions"
      },
      {
        Action = [
          "kms:ReEncrypt*",
          "kms:GenerateDataKey*",
          "kms:Encrypt",
          "kms:DescribeKey",
          "kms:Decrypt"
        ]
        Effect = "Allow"
        Principal = {
          Service = "delivery.logs.amazonaws.com"
        }

        Resource = "*"
        Sid      = "AWSLogDeliveryCheck"
      }
    ]
    Version = "2012-10-17"
  })
}

resource "aws_kms_alias" "encrypt-alias-primary-region" {
  count = var.enable_network_firewall_logging ? 1 : 0

  name          = "alias/${aws_s3_bucket.nfw[0].bucket}-kms-key"
  target_key_id = aws_kms_key.encrypt-primary-region[0].key_id
}
