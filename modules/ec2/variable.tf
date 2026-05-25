variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type = string
}

variable "instance_type" {
  description = "The instance type for the EC2 instance"
  type = string
  default = "t3.micro"
}

variable "subnet_ids" {
  description = "List of subnet IDs to launch instance in."
  type = list(string)
}

variable "security_group_ids" {
  description = "List of security group IDs to associate with the EC2 instance"
  type = list(string)
}

variable "key_name" {
  description = "The key pair name for the EC2 instance"
  type = string
}