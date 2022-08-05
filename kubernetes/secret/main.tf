resource "kubernetes_secret" "default" {
  metadata {
    name = var.name
    namespace = var.namespace
  }
  data = var.data
  type = var.type
}
