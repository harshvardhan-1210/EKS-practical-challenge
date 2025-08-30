output "cluster_id" {
  value       = aws_eks_cluster.this.id
  description = "EKS cluster ID"
}

output "cluster_endpoint" {
  value       = aws_eks_cluster.this.endpoint
  description = "EKS API server endpoint"
}

output "cluster_certificate_authority_data" {
  value       = aws_eks_cluster.this.certificate_authority[0].data
  description = "Certificate authority data"
}
