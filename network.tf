resource "aws_vpc" "new_vpc_environment" {
  cidr_block           = "${var.cidrblock}"
  enable_dns_hostnames = true
}

resource "aws_subnet" "subnet1" {
  cidr_block        = "${cidrsubnet(aws_vpc.new_vpc_environment.cidr_block, 1, 1)}"
  vpc_id            = "${aws_vpc.new_vpc_environment.id}"
  availability_zone = "${var.availability_zones["zone1"]}"
}

resource "aws_subnet" "subnet2" {
  cidr_block        = "${cidrsubnet(aws_vpc.new_vpc_environment.cidr_block, 2, 1)}"
  vpc_id            = "${aws_vpc.new_vpc_environment.id}"
  availability_zone = "${var.availability_zones["zone2"]}"
}
