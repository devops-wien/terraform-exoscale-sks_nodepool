output "id" {
  description = "The network load balancer (NLB) ID."
  value       = exoscale_nlb.nlb.id
}

output "created_at" {
  description = "The NLB creation date."
  value       = exoscale_nlb.nlb.created_at
}

output "ip_address" {
  description = "The NLB IPv4 address."
  value       = exoscale_nlb.nlb.ip_address
}

output "services" {
  description = "The list of the exoscale_nlb_service (names)."
  value       = exoscale_nlb.nlb.services
}

output "state" {
  description = "The current NLB state."
  value       = exoscale_nlb.nlb.state
}
