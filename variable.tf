variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "The environment to deploy resources"
  type        = string
  default     = "dev"
}

variable "aws_access_key" {
  description = "The AWS access key"
  type        = string
  sensitive   = true
  default     = "test"
}

variable "aws_secret_key" {
  description = "The AWS secret key"
  type        = string
  sensitive   = true
  default     = "test"
}

variable "key_name" {
  description = "The name of the key pair to use"
  type        = string
  default     = "my-key"
}
