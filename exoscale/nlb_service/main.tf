# https://registry.terraform.io/providers/exoscale/exoscale/latest/docs/resources/nlb_service
resource "exoscale_nlb_service" "nlb_service" {
  nlb_id           = var.nlb_id
  zone             = var.zone
  name             = var.name
  instance_pool_id = var.instance_pool_id
  port             = var.port
  target_port      = var.target_port
  description      = var.description
  protocol         = var.protocol
  strategy         = var.strategy

  healthcheck {
    port     = var.healthcheck.port
    interval = var.healthcheck.interval
    mode     = var.healthcheck.mode
    retries  = var.healthcheck.retries
    timeout  = var.healthcheck.timeout
    tls_sni  = var.healthcheck.tls_sni
    uri      = var.healthcheck.uri
  }
}