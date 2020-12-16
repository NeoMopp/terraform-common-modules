variable "region" {
  description = "aws region"
}

variable "environment" {
  description = "the name of the environment"
}

variable "stack" {
  description = "the application stack"
}

variable "kms_key_id" {
  description = "the kms key id to use for the encryption"
  type        = string
  default     = null
}

variable "sse_algorithm" {
  description = "the sse algorithm to use for the encryption"
  default     = "AES256"
}
