variable "aws_region" { default = "ap-south-1" }
variable "vpc_cidr" { default = "10.0.0.0/16" }
variable "public_subnets" { default = ["10.0.1.0/24", "10.0.2.0/24"] }
variable "private_subnets" { default = ["10.0.3.0/24", "10.0.4.0/24"] }
variable "availability_zones" { default = ["ap-south-1a", "ap-south-1b"] }
variable "cluster_name" { default = "my-eks-cluster" }
variable "cluster_version" { default = "1.29" }
variable "bucket_name" { default = "my-eks-flask-bucket1" }
variable "tags" {
  default = {
    Project = "Flask-Postgres-EKS"
    Owner   = "Harsha"
  }
}
