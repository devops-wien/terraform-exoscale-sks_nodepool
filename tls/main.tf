# https://registry.terraform.io/providers/hashicorp/tls/latest/docs
resource "tls_private_key" "default" {
  algorithm = "RSA"
}

resource "tls_self_signed_cert" "default" {
  private_key_pem = tls_private_key.default.private_key_pem

  subject {
    common_name  = var.common_name
    organization = var.organization
  }

  dns_names = var.dns_names

  # Certificate expires after 12 hours.
  validity_period_hours = var.validity_period_hours

  # Generate a new certificate if Terraform is run within three
  # hours of the certificate's expiration time.
  early_renewal_hours = var.early_renewal_hours

  allowed_uses = var.allowed_uses

}
