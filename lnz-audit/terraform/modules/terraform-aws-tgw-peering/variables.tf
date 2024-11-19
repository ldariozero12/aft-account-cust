variable "tgw_a" {
  type        = string
  description = "ID of the Transit Gateway A"
}

variable "tgw_b" {
  type        = string
  description = "ID of the Transit Gateway B"
}

variable "lz_cidrs_a" {
  description = "CIDR blocks assigned to region A"
  type        = list(string)
  default     = []
}

variable "lz_cidrs_b" {
  description = "CIDR blocks assigned to region B"
  type        = list(string)
  default     = []
}

variable "inter_region_rt_a" {
  description = "TGW Inter-Region Route Table ID in region A"
  type        = string
  default     = null
}

variable "inter_region_rt_b" {
  description = "TGW Inter-Region Route Table ID in region B"
  type        = string
  default     = null
}
