#######
# IPAM
#######

resource "aws_vpc_ipam" "main" {
  count       = var.create_ipam ? 1 : 0
  description = "IPAM main configuration"
  dynamic "operating_regions" {
    for_each = var.ipam_regions
    content {
      region_name = operating_regions.value
    }
  }
}

resource "aws_vpc_ipam_pool" "main" {
  description    = "Main pool for ${var.ipam_locale}"
  address_family = "ipv4"
  ipam_scope_id  = local.ipam_scope_id
  locale         = var.ipam_locale
  auto_import    = var.ipam_auto_import
}

resource "aws_vpc_ipam_pool_cidr" "primary" {
  for_each     = toset(var.pool_cidrs)
  ipam_pool_id = aws_vpc_ipam_pool.main.id
  cidr         = each.key
}

###################################
# sub Pools
###################################

resource "aws_vpc_ipam_pool" "sub_pools" {
  for_each                          = var.sub_pools
  description                       = "Pool for ${each.key} - ${var.ipam_locale}"
  address_family                    = "ipv4"
  source_ipam_pool_id               = aws_vpc_ipam_pool.main.id
  ipam_scope_id                     = local.ipam_scope_id
  locale                            = var.ipam_locale
  auto_import                       = var.ipam_auto_import
  allocation_min_netmask_length     = lookup(each.value, "allocation_min_netmask_length", null)
  allocation_default_netmask_length = lookup(each.value, "allocation_default_netmask_length", null)
  allocation_max_netmask_length     = lookup(each.value, "allocation_max_netmask_length", null)

  tags = {
    Name = "${each.key}-${var.ipam_locale}"
  }
}

resource "aws_vpc_ipam_pool_cidr" "sub_pools" {
  for_each     = local.pools_flattened
  ipam_pool_id = aws_vpc_ipam_pool.sub_pools[each.value.pool_name].id
  cidr         = each.value.cidr_block
}

###############################
# Resource Association Manager
###############################

resource "aws_ram_resource_share" "ipam_shares" {
  for_each                  = var.sub_pools
  name                      = "main-ipam-${var.ipam_locale}-${each.key}"
  allow_external_principals = false
}

resource "aws_ram_resource_association" "sub_pools" {
  for_each           = var.sub_pools
  resource_arn       = aws_vpc_ipam_pool.sub_pools[each.key].arn
  resource_share_arn = aws_ram_resource_share.ipam_shares[each.key].arn
}

resource "aws_ram_principal_association" "sub_pools" {
  for_each           = var.sub_pools
  principal          = "arn:aws:organizations::${var.management_account_id}:ou/${var.organizations_id}/${each.value.share_with_ou}"
  resource_share_arn = aws_ram_resource_share.ipam_shares[each.key].arn
}
