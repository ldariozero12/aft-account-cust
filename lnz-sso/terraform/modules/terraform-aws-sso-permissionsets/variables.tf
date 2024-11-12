
variable "permissionsets" {
  description = "Map of permission sets to create"
  type = map(object({
    description          = string
    inline_policy        = optional(string)
    aws_managed_policies = optional(list(string))
    session_duration     = optional(string)
  }))
  default = {}
}

variable "session_duration" {
  description = "Default session duration for all permissionsets, can be overriden for each permissionset"
  type        = string
  default     = "PT4H"
}
