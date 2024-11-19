variable "lz_region_cidrs" {
  type = list(string)
}

variable "ipam_pool_id" {
  type        = string
  description = "ID of the IPAM pool used for Egress VPC - Must not be set if using cidr_block"
  default     = null
}

variable "netmask_length" {
  type        = number
  description = "Netmask length for Egress VPC - Must not be set if using cidr_block"
  default     = null
}

variable "cidr_block" {
  type        = string
  description = "CIDR block for Egress VPC - Must not be set if using ipam_pool_id"
  default     = null
}

variable "tgw_id" {
  type        = string
  description = "ID of the AWS Transit Gateway that the Egress VPC is attached to"
}

variable "tgw_route_tables" {
  type        = map(string)
  description = "Map of TGW routes you want the Egress is added"
  default     = {}
}

variable "tgw_propagations" {
  type        = map(string)
  description = "Map of TGW routes you want the Egress is propagated"
  default     = {}
}

variable "tgw_association" {
  type        = string
  description = "TGW route table you want the Egress is associated to"
}

variable "tgw_on_prem_route_table" {
  type        = string
  description = "OnPrem route table for attaching the Egress"
  default     = null
}

variable "pl_private_ranges" {
  type        = list(string)
  description = "Prefix list IDs for the private ranges"
  default     = []
}

variable "enable_network_firewall" {
  type        = bool
  default     = false
  description = "Whether to enable Network Firewall"
}

variable "enable_network_firewall_logging" {
  type        = bool
  default     = false
  description = "Whether it must configure network firewall logs"
}

