output "vpc_id" { value = module.vpc.vpc_id }
output "public_subnets" { value = module.vpc.public_subnets }
output "private_subnets" { value = module.vpc.private_subnets }
output "eks_cluster_id" { value = module.eks.cluster_id }
output "eks_cluster_endpoint" { value = module.eks.cluster_endpoint }
output "eks_cluster_ca" { value = module.eks.cluster_certificate_authority_data }
output "s3_bucket_id" { value = module.s3.bucket_id }
output "s3_bucket_arn" { value = module.s3.bucket_arn }
