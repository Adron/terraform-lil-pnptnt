resource "aws_vpc" "new_vpc_environment" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
}