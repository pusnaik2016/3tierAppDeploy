variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnets" {
  description = "List of public subnets CIDR blocks"
  type        = list(string)
}

variable "private_subnets" {
  description = "List of private subnets CIDR blocks"
  type        = list(string)
}