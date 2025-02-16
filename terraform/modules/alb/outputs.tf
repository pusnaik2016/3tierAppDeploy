output "alb_dns_name" {
  description = "The DNS name of the Application Load Balancer"
  value       = aws_lb.web.dns_name
}

output "alb_arn" {
  description = "The ARN of the Application Load Balancer"
  value       = aws_lb.web.arn
}