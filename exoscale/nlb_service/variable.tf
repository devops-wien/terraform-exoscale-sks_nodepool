variable "nlb_id" {
  description = "(Required) The parent exoscale_nlb ID."
  type        = string
}

variable "zone" {
  description = "(Required) The Exoscale Zone name."
  type        = string
}

variable "name" {
  description = "(Required) The NLB service name."
  type        = string
}

variable "instance_pool_id" {
  description = "(Required) The exoscale_instance_pool (ID) to forward traffic to."
  type        = string
}

variable "port" {
  description = "(Required) The NLB service (TCP/UPP) port."
  type        = string
}

variable "target_port" {
  description = "(Required) The (TCP/UDP) port to forward traffic to (on target instance pool members)."
  type        = string
}

variable "description" {
  description = "A free-form text describing the NLB service."
  type        = string
  default     = "SKS NLB"
}

variable "protocol" {
  description = "The protocol (tcp|udp; default: tcp)."
  type        = string
  default     = "tcp"
}

variable "strategy" {
  description = "The strategy (round-robin|source-hash; default: round-robin)."
  type        = string
  default     = "round-robin"
}

variable "healthcheck" {
  description = "(Block) The service health checking configuration (may only bet set at creation time)."
  type = object({
    port = number
    interval = number
    mode = string
    retries = number
    timeout = number
    tls_sni = string
    uri = string
  })
}
