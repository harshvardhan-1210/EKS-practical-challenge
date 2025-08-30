variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "flask-eks-cluster"
}

variable "cluster_version" {
  description = "Kubernetes version for EKS"
  type        = string
  default     = "1.29"
}

variable "vpc_id" {
  description = "VPC id where EKS will be deployed"
  type        = string
}

variable "private_subnets" {
  description = "List of private subnet IDs for worker nodes"
  type        = list(string)
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
  default     = {}
}
