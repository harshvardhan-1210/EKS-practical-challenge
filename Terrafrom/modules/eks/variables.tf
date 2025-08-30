variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "flask-eks-cluster"
}

variable "cluster_version" {
  description = "Kubernetes version"
  type        = string
  default     = "1.29"
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "private_subnets" {
  description = "Private subnet IDs for worker nodes"
  type        = list(string)
}

variable "tags" {
  description = "Tags for resources"
  type        = map(string)
  default     = {}
}
