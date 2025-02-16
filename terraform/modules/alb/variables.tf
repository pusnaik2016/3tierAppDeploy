variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "public_subnets" {
  description = "List of public subnets"
  type        = list(string)
}

variable "security_groups" {
  description = "List of security group IDs for the ALB"
  type        = list(string)
}