variable "key" {
  description = "Exoscale account API key"
  type        = string
}

variable "secret" {
  description = "Exoscale account API secret"
  type        = string
}

# sks_nodepool
variable "cluster_id" {
  description = "(Required) The parent exoscale_sks_cluster ID."
  type        = string
}

variable "zone" {
  description = "The Exoscale Zone name."
  type        = string
  default     = "at-vie-1"
}

variable "name" {
  description = "The SKS node pool name."
  type        = string
  default     = "sks_nodepool-at-vie-1"
}

variable "size" {
  description = "The Noodpool Size."
  type        = number
  default     = 1
}

variable "instance_type" {
  description = "The managed compute instances type (<family>.<size>, e.g. standard.medium; use the Exoscale CLI - exo compute instance-type list - for the list of available types)"
  type        = string
  default     = "standard.small"
}

variable "description" {
  description = "A free-form text describing the pool."
  type        = string
  default     = "SKS Nodepool"
}

variable "deploy_target_id" {
  description = "A deploy target ID."
  type        = string
  default     = ""
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

# nlb
variable "nlb_name" {
  description = "The network load balancer (NLB) name."
  type        = string
  default = ""
}

variable "nlb_description" {
  description = "A free-form text describing the NLB."
  type        = string
  default     = "SKS NLB"
}

variable "nlb_labels" {
  description = "A map of key/value labels."
  type        = map(string)
  default     = {}
}

# kubectl
variable "host" {
  description = "The hostname (in form of URI) of the Kubernetes API. Can be sourced from KUBE_HOST."
  type = string
}

variable "client_certificate" {
  description = "PEM-encoded client certificate for TLS authentication. Can be sourced from KUBE_CLIENT_CERT_DATA."
  type = string
}

variable "client_key" {
  description = "PEM-encoded client certificate key for TLS authentication. Can be sourced from KUBE_CLIENT_KEY_DATA."
  type = string
}

variable "cluster_ca_certificate" {
  description = "PEM-encoded root certificates bundle for TLS authentication. Can be sourced from KUBE_CLUSTER_CA_CERT_DATA."
  type = string
}

variable "ssl_certificate" {
  description = "(Required) The default ssl certificate."
  type        = string
}

# nlb_service
/* Currently not in use, handled by ingress controller
variable "nlb_service_name" {
  description = "(Required) The NLB service name."
  type        = string
}

variable "nlb_service_port" {
  description = "(Required) The NLB service (TCP/UPP) port."
  type        = string
}

variable "nlb_service_target_port" {
  description = "(Required) The (TCP/UDP) port to forward traffic to (on target instance pool members)."
  type        = string
}

variable "nlb_service_description" {
  description = "A free-form text describing the NLB service."
  type        = string
  default     = "SKS NLB"
}

variable "nlb_service_protocol" {
  description = "The protocol (tcp|udp; default: tcp)."
  type        = string
  default     = "tcp"
}

variable "nlb_service_strategy" {
  description = "The strategy (round-robin|source-hash; default: round-robin)."
  type        = string
  default     = "round-robin"
}

# nlb_service_healthcheck
variable "nlb_service_healthcheck_port" {
  description = "(Required) The healthcheck port."
  type        = number
}

variable "nlb_service_healthcheck_interval" {
  description = "The healthcheck interval in seconds (default: 10)."
  type        = number
  default     = 10
}

variable "nlb_service_healthcheck_mode" {
  description = "The healthcheck mode (tcp|http|https; default: tcp)."
  type        = string
  default     = "tcp"
}

variable "nlb_service_healthcheck_retries" {
  description = "The healthcheck retries (default: 1)."
  type        = number
  default     = 1
}

variable "nlb_service_healthcheck_timeout" {
  description = "The healthcheck timeout (seconds; default: 5)."
  type        = number
  default     = 5
}

variable "nlb_service_healthcheck_tls_sni" {
  description = "The healthcheck TLS SNI server name (only if mode is https)."
  type        = string
  default     = "example.net"
}

variable "nlb_service_healthcheck_uri" {
  description = "The healthcheck URI (must be set only if mode is http(s))."
  type        = string
  default     = "/healthz"
}
*/
