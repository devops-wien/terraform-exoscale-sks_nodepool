locals {
  name = var.name != "" ? var.name : "sks_nodepool-${var.zone}"
  nlb_name = var.nlb_name != "" ? var.nlb_name : "nlb-${var.zone}"
}
