output "id" {
  description = "The SKS node pool ID."
  value       = exoscale_sks_nodepool.sks_nodepool.id
}

output "created_at" {
  description = "The pool creation date."
  value       = exoscale_sks_nodepool.sks_nodepool.created_at
}

output "instance_pool_id" {
  description = "The underlying exoscale_instance_pool ID."
  value       = exoscale_sks_nodepool.sks_nodepool.instance_pool_id
}

output "state" {
  description = "The current pool state."
  value       = exoscale_sks_nodepool.sks_nodepool.state
}

output "template_id" {
  description = "The managed instances template ID."
  value       = exoscale_sks_nodepool.sks_nodepool.template_id
}

output "version" {
  description = "The managed instances version."
  value       = exoscale_sks_nodepool.sks_nodepool.version
}