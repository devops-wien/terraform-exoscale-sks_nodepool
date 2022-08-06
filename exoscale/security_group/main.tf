resource "exoscale_security_group" "sks-security-group" {
  name = var.name
  description = var.description
  external_sources = var.external_sources
}
