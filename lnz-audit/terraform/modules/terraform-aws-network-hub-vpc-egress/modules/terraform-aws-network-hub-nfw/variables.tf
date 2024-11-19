variable "vpc_id" {
  description = "VPC id where the Network Firewall is provisioned"
  type        = string
}

variable "name" {
  description = "Name of the Network Firewall"
  type        = string
  default     = "egress-network-firewall"
}

variable "subnets" {
  description = "List of subnet ids where the Network Firewall is provisioned"
  type        = list(string)
}

variable "enable_network_firewall_logging" {
  type        = bool
  default     = false
  description = "Whether it must configure network firewall logs"
}

