# © 2024 Amazon Web Services, Inc. or its affiliates. All Rights Reserved.  
# This AWS Content is provided subject to the terms of the AWS Customer Agreement available at 
# http://aws.amazon.com/agreement or other written agreement between Customer and either
# Amazon Web Services, Inc. or Amazon Web Services EMEA SARL or both.

resource "aws_ssoadmin_permission_set" "actors_ps" {
  for_each         = var.permissionsets
  name             = each.key
  description      = each.value.description
  instance_arn     = local.sso_instance_arn
  session_duration = try(each.value.session_duration, var.session_duration)
}

resource "aws_ssoadmin_permission_set_inline_policy" "actors_inline_policy" {
  for_each = { for ps_key, ps_value in var.permissionsets : ps_key => ps_value if ps_value.inline_policy != null }
  inline_policy = templatefile(each.value.inline_policy, {
    "account_id" = data.aws_caller_identity.context.account_id
    "boundary"   = "pol-boundary"
    "app_prefix" = "test"
    }
  )
  instance_arn       = local.sso_instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.actors_ps[each.key].arn
}

resource "aws_ssoadmin_managed_policy_attachment" "account_actors" {
  count              = length(local.account_actor_ps_managed_policies)
  managed_policy_arn = "arn:aws:iam::aws:policy/${local.account_actor_ps_managed_policies[count.index].aws_managed_policy}"
  instance_arn       = local.sso_instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.actors_ps[local.account_actor_ps_managed_policies[count.index].ps_name].arn
}
