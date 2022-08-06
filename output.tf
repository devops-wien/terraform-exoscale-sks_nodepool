output "id" {
  description = "The SKS node pool ID."
  value       = module.exoscale_sks_nodepool.id
}

output "created_at" {
  description = "The pool creation date."
  value       = module.exoscale_sks_nodepool.created_at
}

output "instance_pool_id" {
  description = "The underlying exoscale_instance_pool ID."
  value       = module.exoscale_sks_nodepool.instance_pool_id
}

output "state" {
  description = "The current pool state."
  value       = module.exoscale_sks_nodepool.state
}

output "template_id" {
  description = "The managed instances template ID."
  value       = module.exoscale_sks_nodepool.template_id
}

output "version" {
  description = "The managed instances version."
  value       = module.exoscale_sks_nodepool.version
}

# nlb
output "nlb_id" {
  description = "The network load balancer (NLB) ID."
  value       = module.exoscale_nlb.id
}

output "nlb_created_at" {
  description = "The NLB creation date."
  value       = module.exoscale_nlb.created_at
}

output "nlb_ip_address" {
  description = "The NLB IPv4 address."
  value       = module.exoscale_nlb.ip_address
}

output "nlb_services" {
  description = "The list of the exoscale_nlb_service (names)."
  value       = module.exoscale_nlb.services
}

output "nlb_state" {
  description = "The current NLB state."
  value       = module.exoscale_nlb.state
}

output "sks-security-group-id" {
  value       = module.exoscale_security_group.id
  description = "The security group ID."
}
