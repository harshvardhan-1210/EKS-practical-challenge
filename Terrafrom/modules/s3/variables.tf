variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
}

variable "tags" {
  description = "Common tags for the bucket"
  type        = map(string)
  default     = {}
}
