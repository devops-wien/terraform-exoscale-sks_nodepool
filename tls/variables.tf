variable "allowed_uses" {
  description = "List of key usages allowed for the issued certificate. Values are defined in RFC 5280 and combine flags defined by both Key Usages and Extended Key Usages. Accepted values: any_extended, cert_signing, client_auth, code_signing, content_commitment, crl_signing, data_encipherment, decipher_only, digital_signature, email_protection, encipher_only, ipsec_end_system, ipsec_tunnel, ipsec_user, key_agreement, key_encipherment, microsoft_commercial_code_signing, microsoft_kernel_code_signing, microsoft_server_gated_crypto, netscape_server_gated_crypto, ocsp_signing, server_auth, timestamping."
  type = list(string)
  default = [
    "key_encipherment",
    "digital_signature",
    "server_auth",
  ]
}

variable "validity_period_hours" {
  description = "Number of hours, after initial issuing, that the certificate will remain valid for."
  type = number
  default = 12
}

variable "dns_names" {
  description = "List of DNS names for which a certificate is being requested (i.e. certificate subjects)."
  type = list(string)
}

variable "early_renewal_hours" {
  description = "The resource will consider the certificate to have expired the given number of hours before its actual expiry time. This can be useful to deploy an updated certificate in advance of the expiration of the current certificate. However, the old certificate remains valid until its true expiration time, since this resource does not (and cannot) support certificate revocation. Also, this advance update can only be performed should the Terraform configuration be applied during the early renewal period. (default: 0)"
  type = number
  default = 0
}

variable "ip_addresses" {
  description = "List of IP addresses for which a certificate is being requested (i.e. certificate subjects)."
  type = list(string)
  default = []
}

variable "is_ca_certificate" {
  description = "Is the generated certificate representing a Certificate Authority (CA) (default: false)."
  type = bool
  default = false
}

variable "set_authority_key_id" {
  description = "Should the generated certificate include an authority key identifier: for self-signed certificates this is the same value as the subject key identifier (default: false)."
  type = bool
  default = false
}

variable "set_subject_key_id" {
  description = "Should the generated certificate include a subject key identifier (default: false)."
  type = bool
  default = false
}

#fixme implement subject block

variable "common_name" {
  description = "Distinguished name: CN"
  type = string
}

variable "organization" {
  description = "Distinguished name: O"
  type = string
}

variable "uris" {
  description = "List of URIs for which a certificate is being requested (i.e. certificate subjects)."
  type = list(string)
  default = []
}
