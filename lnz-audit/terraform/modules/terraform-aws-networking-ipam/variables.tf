variable "management_account_id" {
  type = number
}

variable "organizations_id" {
  type = string
}

variable "create_ipam" {
  type        = bool
  description = "Create IPAM"
  default     = false
}

variable "ipam_auto_import" {
  type        = bool
  description = "IPAM auto import"
  default     = true
}

variable "ipam_main" {
  type        = any
  description = "IPAM main configuration"
  default     = null
}

variable "ipam_regions" {
  type        = list(string)
  description = "List of regions where IPAM is deployed"
  default     = []
}

variable "ipam_locale" {
  type        = string
  description = "Region where IPAM pools are deployed"
}

variable "pool_cidrs" {
  type        = list(string)
  description = "CIDR blocks for IPAM pool"
}

variable "sub_pools" {
  type = map(object({
    cidr_blocks                       = list(string)
    share_with_ou                     = string
    allocation_min_netmask_length     = optional(number)
    allocation_default_netmask_length = optional(number)
    allocation_max_netmask_length     = optional(number)
  }))
  description = "Map of IPAM sub pools"
}
