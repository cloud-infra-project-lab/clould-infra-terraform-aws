output "vpc_id" {
  value = aws_vpc.main.id
  description = "ID of the main VPC"
}

output "public_subnet_ids" {
  value = [aws_subnet.public.id]
  description = "IDs of the public subnets"
}

output "private_subnet_ids" {
  value = [aws_subnet.private.id]
  description = "IDs of the private subnets"
}

output "security_group_id" {
  value = aws_security_group.sg.id
  description = "ID of the security group"
}