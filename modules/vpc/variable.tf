variable "vpc_cidr" {
  type = string
  description = "VPC CIDR block"
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  type = string
  description = "Public subnet CIDR block"
  default = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  type = string
  description = "Private subnet CIDR block"
  default = "10.0.2.0/24"
}

variable "env_name" {
  type = string
  description = "Environment name"
  default = "dev"
}