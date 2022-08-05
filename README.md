# terraform-exoscale-sks_nodepool

https://registry.terraform.io/providers/exoscale/exoscale/latest/docs/resources/sks_nodepool

## usage

```hcl
//--------------------------------------------------------------------
// Variables
variable "sks_nodepool_client_certificate" {}
variable "sks_nodepool_client_key" {}
variable "sks_nodepool_cluster_ca_certificate" {}
variable "sks_nodepool_cluster_id" {}
variable "sks_nodepool_host" {}
variable "sks_nodepool_key" {}
variable "sks_nodepool_secret" {}
variable "sks_nodepool_security_group_ids" {}

//--------------------------------------------------------------------
// Modules
module "sks_nodepool" {
  source  = "devops-wien/sks_nodepool/exoscale"
  version = "0.0.1"

  client_certificate     = "${var.sks_nodepool_client_certificate}"
  client_key             = "${var.sks_nodepool_client_key}"
  cluster_ca_certificate = "${var.sks_nodepool_cluster_ca_certificate}"
  cluster_id             = "${var.sks_nodepool_cluster_id}"
  host                   = "${var.sks_nodepool_host}"
  key                    = "${var.sks_nodepool_key}"
  secret                 = "${var.sks_nodepool_secret}"
  security_group_ids     = "${var.sks_nodepool_security_group_ids}"
}
```