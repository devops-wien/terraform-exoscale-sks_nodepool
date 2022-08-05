variable "zone" {
  description = "(Required) The Exoscale Zone name."
  type        = string
}

variable "name" {
  description = "The network load balancer (NLB) name."
  type        = string
  default = ""
}

variable "description" {
  description = "A free-form text describing the NLB."
  type        = string
  default     = "SKS NLB"
}

variable "labels" {
  description = "A map of key/value labels."
  type        = map(string)
  default     = {}
}
