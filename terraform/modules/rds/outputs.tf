output "rds_endpoint" {
  description = "The endpoint of the RDS instance"
  value       = aws_db_instance.default.endpoint
}

output "rds_username" {
  description = "The master username for the RDS instance"
  value       = aws_db_instance.default.username
}

output "rds_db_name" {
  description = "The name of the database"
  value       = aws_db_instance.default.db_name
}