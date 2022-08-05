output "cert_pem" {
  value = tls_self_signed_cert.default.cert_pem
}

output "private_key_pem" {
  value = tls_private_key.default.private_key_pem
}
