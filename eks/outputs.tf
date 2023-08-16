output "cluster_endpoint" {
  description = "EKS Control Plane Endpoint"
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security Group IDs attached to the EKS Control Plane"
  value       = module.eks.cluster_security_group_id
}

output "region" {
  description = "AWS Region"
  value       = var.region
}

output "cluster_name" {
  description = "EKS Cluster Name"
  value       = module.eks.cluster_name
}
