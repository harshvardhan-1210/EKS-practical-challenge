variable "name" {
  description = "Name prefix for VPC resources"
  type        = string
  default     = "flask-eks"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "List of public subnet CIDR blocks"
  type        = list(string)
}

variable "private_subnets" {
  description = "List of private subnet CIDR blocks"
  type        = list(string)
}

variable "availability_zones" {
  description = "List of availability zones (AZs)"
  type        = list(string)
}

variable "tags" {
  description = "Common tags for VPC resources"
  type        = map(string)
  default     = {}
}
