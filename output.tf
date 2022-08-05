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
