output "instance_id" {
  description = "IDs of the instance created"
  value = aws_instance.main[*].id
}

output "public_ips" {
  description = "Public IPs of the instance created"
  value = aws_instance.main[*].public_ip
}

output "private_ips" {
  description = "Private IPs of the instance created"
  value = aws_instance.main[*].private_ip
}