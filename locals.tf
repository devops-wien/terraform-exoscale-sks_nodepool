locals {
  name = var.name != "" ? var.name : "${var.prefix_name}_${var.zone}"
  nlb_name = var.nlb_name != "" ? var.nlb_name : "${var.prefix_name}_${var.zone}"
}
