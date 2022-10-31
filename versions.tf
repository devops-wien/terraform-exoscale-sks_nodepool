terraform {
  required_providers {
    exoscale = {
      source  = "exoscale/exoscale"
      version = ">= 0.40.0"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "~> 1.14.0"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.14.0"
    }
    tls = {
      source = "hashicorp/tls"
      version = "4.0.4"
    }
  }
  required_version = ">= 1.2.6"
}
