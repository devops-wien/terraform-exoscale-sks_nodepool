# https://github.com/gavinbunney/terraform-provider-kubectl/issues/58#issuecomment-718174177
data "kubectl_path_documents" "docs" {
  pattern = "${path.module}/manifests/*.yaml"
  vars      = {
    exoscale_loadbalancer_id                      = var.exoscale_loadbalancer_id
    exoscale_loadbalancer_service_instancepool_id = var.exoscale_loadbalancer_service_instancepool_id
    ssl_certificate                               = var.ssl_certificate
  }
}

resource "kubectl_manifest" "haproxy-ingress" {
  count      = length(lookup(data.kubectl_path_documents.docs, "documents", 0))
  yaml_body  = element(lookup(data.kubectl_path_documents.docs, "documents", []), count.index)
}
