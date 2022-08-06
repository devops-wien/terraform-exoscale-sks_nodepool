variable "name" {
  description = "(Required) The security group name."
  type        = string
}

variable "description" {
  description = "A free-form text describing the group."
  type        = string
}

variable "external_sources" {
  description = "A list of external network sources, in CIDR notation."
  type        = list(string)
  default     = []
}