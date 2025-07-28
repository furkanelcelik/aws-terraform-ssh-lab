provider "aws" {
  region = var.aws_region
}

# Discover the existing VPC
data "aws_vpc" "existing" {
  filter {
    name   = "tag:Name"
    values = [var.existing_vpc_name]
  }
}

# Discover the existing public subnet
data "aws_subnet" "existing" {
  vpc_id = data.aws_vpc.existing.id

  filter {
    name   = "cidr-block"
    values = [var.existing_subnet_cidr]
  }
}

# Discover the existing security group
data "aws_security_group" "existing" {
  name   = var.existing_sg_name
  vpc_id = data.aws_vpc.existing.id
}

# Find the latest Amazon Linux 2 AMI
data "aws_ami" "amazon_linux_2" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}
