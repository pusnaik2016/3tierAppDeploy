output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "public_subnets" {
  description = "List of public subnets"
  value       = aws_subnet.public[*].id
}

output "private_subnets" {
  description = "List of private subnets"
  value       = aws_subnet.private[*].id
}

output "web_sg_id" {
  description = "Security group ID for the web tier"
  value       = aws_security_group.web_sg.id
}

output "app_sg_id" {
  description = "Security group ID for the application tier"
  value       = aws_security_group.app_sg.id
}

output "db_sg_id" {
  description = "Security group ID for the database tier"
  value       = aws_security_group.db_sg.id
}