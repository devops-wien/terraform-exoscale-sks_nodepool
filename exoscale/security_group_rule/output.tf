output "nodeport-services-ipv4" {
  value = exoscale_security_group_rule.nodeport-services-ipv4.id
}

output "nodeport-services-ipv6" {
  value = exoscale_security_group_rule.nodeport-services-ipv6.id
}

output "sks-kubelet" {
  value = exoscale_security_group_rule.sks-kubelet.id
}

output "calico_id" {
  value = exoscale_security_group_rule.calico.id
}
