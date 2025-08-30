output "cluster_id" {
  value = module.eks_cluster.cluster_id
  description = "EKS cluster id"
}

output "cluster_endpoint" {
  value = module.eks_cluster.cluster_endpoint
  description = "EKS cluster API endpoint"
}

output "cluster_certificate_authority_data" {
  value = module.eks_cluster.cluster_certificate_authority_data
  description = "Base64 CA data for the cluster"
}
