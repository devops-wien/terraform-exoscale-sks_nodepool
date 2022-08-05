variable "name" {
  description = "(Required) metadata name"
}

variable "namespace" {
  description = "(Required) metadata namespace"
  default     = "default"
}

variable "data" {
  description = "(Optional) A map of the secret data."
  type        = map(string)
  default     = {}
}

variable "type" {
  description = "(Optional) The secret type. Defaults to Opaque. For more info see Kubernetes"
  type        = string
  default     = "Opaque"
}
