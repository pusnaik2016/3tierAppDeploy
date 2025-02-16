variable "db_name" {
  description = "The name of the database"
  type        = string
}

variable "db_username" {
  description = "The master username for the database"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "The master password for the database"
  type        = string
  sensitive   = true
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for the RDS instance"
  type        = list(string)
}

variable "security_groups" {
  description = "List of security group IDs for the RDS instance"
  type        = list(string)
}