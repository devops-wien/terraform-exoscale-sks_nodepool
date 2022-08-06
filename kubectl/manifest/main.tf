/*
resource "kubernetes_namespace" "haproxy-controller" {
  metadata {
    name = "haproxy-controller"
  }
}
*/

# https://github.com/gavinbunney/terraform-provider-kubectl/issues/58#issuecomment-718174177
data "kubectl_path_documents" "documents-count" {
  pattern = "${path.module}/manifests/*.yaml"
  vars    = {
    exoscale_loadbalancer_id                      = ""
    exoscale_loadbalancer_service_instancepool_id = ""
    ssl_certificate                               = ""
    email                                         = ""
  }
}

data "kubectl_path_documents" "documents" {
  pattern = "${path.module}/manifests/*.yaml"
  vars    = {
    exoscale_loadbalancer_id                      = var.exoscale_loadbalancer_id
    exoscale_loadbalancer_service_instancepool_id = var.exoscale_loadbalancer_service_instancepool_id
    ssl_certificate                               = var.ssl_certificate
    email                                         = var.email
  }
}

resource "kubectl_manifest" "manifest" {
  count     = length(lookup(data.kubectl_path_documents.documents-count, "documents", 0))
  yaml_body = element(lookup(data.kubectl_path_documents.documents, "documents", []), count.index)
  wait      = true
}
