# Author :- Dheeraj Choudhary

output "vpc_id" {
  value       = aws_vpc.lab.id
  description = "VPC id."
}

output "enable_dns_support" {
  value       = aws_vpc.lab.enable_dns_support
  description = "Check if dns support is enabled."
}

output "enable_dns_hostnames" {
  value       = aws_vpc.lab.enable_dns_hostnames
  description = "Check if dns hostname is enabled."
}

output "aws_internet_gateway_id" {
  value       = aws_internet_gateway.lab_internet_gateway.id
  description = "Internet gateway id."
}