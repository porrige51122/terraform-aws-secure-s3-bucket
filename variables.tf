variable "bucket_name" {
  type        = string
  description = "The name of the S3 bucket"
}

variable "additional_kms_policy" {
  type        = string
  description = "The policy to attach to the KMS key"
  default     = ""
}

variable "additional_bucket_policy" {
  type        = string
  description = "The policy to attach to the S3 bucket"
  default     = ""
}

variable "retention_enabled" {
  type        = bool
  description = "Whether to enable retention on the bucket"
  default     = false
}

variable "retention_time" {
  type        = number
  description = "The number of days to retain objects in the bucket"
  default     = 30
}
