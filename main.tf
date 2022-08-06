module "exoscale_sks_nodepool" {
  source                  = "./exoscale/sks_nodepool"
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

module "exoscale_nlb" {
  source      = "./exoscale/nlb"
  zone        = var.zone
  name        = var.nlb_name
  description = var.nlb_description
  labels      = var.nlb_labels
}

module "tls_self_signed_cert" {
  source       = "./tls"
  common_name  = var.common_name
  dns_names    = var.dns_names
  organization = var.organization
}

module "kubernetes_secret" {
  source = "./kubernetes/secret"
  name   = var.ssl_certificate
  data   = {
    "tls.crt" = module.tls_self_signed_cert.cert_pem
    "tls.key" = module.tls_self_signed_cert.private_key_pem
  }
  type = "kubernetes.io/tls"
}

module "kubectl_manifest" {
  source                                        = "./kubectl/manifest"
  exoscale_loadbalancer_id                      = module.exoscale_nlb.id
  exoscale_loadbalancer_service_instancepool_id = module.exoscale_sks_nodepool.instance_pool_id
  ssl_certificate                               = var.ssl_certificate
  email                                         = var.email
}

/* Currently not in use, handled by ingress controller
module "exoscale_nlb_service" {
  depends_on = [module.exoscale_nlb.id, module.exoscale_sks_nodepool.instance_pool_id]
  source           = "./exoscale/nlb_service"
  nlb_id           = module.exoscale_nlb.id
  zone             = var.zone
  name             = var.name
  instance_pool_id = module.exoscale_sks_nodepool.instance_pool_id
  port             = var.nlb_service_port
  target_port      = var.nlb_service_target_port
  description      = var.nlb_service_description
  protocol         = var.nlb_service_protocol
  strategy         = var.nlb_service_strategy
  healthcheck      = {
    port     = var.nlb_service_healthcheck_port
    interval = var.nlb_service_healthcheck_interval
    mode     = var.nlb_service_healthcheck_mode
    retries  = var.nlb_service_healthcheck_retries
    timeout  = var.nlb_service_healthcheck_timeout
    tls_sni  = var.nlb_service_healthcheck_tls_sni
    uri      = var.nlb_service_healthcheck_uri
  }
}
*/