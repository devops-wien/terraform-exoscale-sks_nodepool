# https://registry.terraform.io/providers/exoscale/exoscale/latest/docs/resources/sks_nodepool
resource "exoscale_sks_nodepool" "sks_nodepool" {
  cluster_id              = var.cluster_id
  zone                    = var.zone
  name                    = var.name
  size                    = var.size
  instance_type           = var.instance_type
  description             = var.description
  deploy_target_id        = var.deploy_target_id
  instance_prefix         = var.instance_prefix
  disk_size               = var.disk_size
  labels                  = var.labels
  taints                  = var.taints
  anti_affinity_group_ids = var.anti_affinity_group_ids
  private_network_ids     = var.private_network_ids
  security_group_ids      = var.security_group_ids
}
