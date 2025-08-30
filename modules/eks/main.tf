# This module invokes the upstream EKS module to create the cluster.
# It returns a small set of outputs (mapped below)

module "eks_cluster" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "~> 20.0"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  # Use private subnets for worker nodes
  subnet_ids = var.private_subnets
  vpc_id     = var.vpc_id

  # simple managed node group (adjust as needed)
  node_groups = {
    default = {
      desired_capacity = 2
      min_capacity     = 1
      max_capacity     = 4
      instance_type    = "t3.xlarge"
    }
  }

  tags = var.tags
}
