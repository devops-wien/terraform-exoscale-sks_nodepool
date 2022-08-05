# https://registry.terraform.io/providers/exoscale/exoscale/latest/docs/resources/nlb
resource "exoscale_nlb" "nlb" {
  zone = var.zone
  name = var.name != "" ? var.name : "${var.zone}-k8s-nlb"
  description = var.description
  labels = var.labels
}
