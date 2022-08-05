variable "size" {
  description = "(Required) The Noodpool Size."
  type        = number
}

variable "cluster_id" {
  description = "(Required) The parent exoscale_sks_cluster ID."
  type        = string
}

variable "zone" {
  description = "(Required) The Exoscale Zone name."
  type        = string
}

variable "name" {
  description = "(Required) The SKS node pool name."
  type        = string
}

variable "instance_type" {
  description = "(Required) - The managed compute instances type (<family>.<size>, e.g. standard.medium; use the Exoscale CLI - exo compute instance-type list - for the list of available types)"
  type        = string
}

variable "description" {
  description = "A free-form text describing the pool."
  type        = string
  default     = "SKS Nodepool"
}

variable "deploy_target_id" {
  description = "A deploy target ID."
  type        = string
}

variable "instance_prefix" {
  description = "The string used to prefix the managed instances name (default pool)."
  type        = string
  default     = "pool"
}

variable "disk_size" {
  description = "The managed instances disk size"
  type        = number
  default     = 50
}

variable "labels" {
  description = "A map of key/value labels."
  type        = map(string)
  default     = {}
}

variable "taints" {
  description = "A map of key/value Kubernetes taints (<value>:<effect>)."
  type        = map(string)
  default     = {}
}

variable "anti_affinity_group_ids" {
  description = "A list of exoscale_anti_affinity_group (IDs) to be attached to the managed instances."
  type        = list(string)
  default     = []
}

variable "private_network_ids" {
  description = "A list of exoscale_private_network (IDs) to be attached to the managed instances."
  type        = list(string)
  default     = []
}

variable "security_group_ids" {
  description = "A list of exoscale_security_group (IDs) to be attached to the managed instances."
  type        = list(string)
  default     = []
}
