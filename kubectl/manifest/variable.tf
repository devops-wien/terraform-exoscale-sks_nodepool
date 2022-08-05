variable "exoscale_loadbalancer_id" {
  description = "(Required) The Exoscale Loadbalancer Id."
  type        = string
}

variable "exoscale_loadbalancer_service_instancepool_id" {
  description = "(Required) The Exoscale Loadbalancer Service Instancepool Id."
  type        = string
}

variable "ssl_certificate" {
  description = "(Required) The default ssl certificate."
  type        = string
}


//variable "time_sleep" {}
