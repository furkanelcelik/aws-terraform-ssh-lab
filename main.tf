provider "aws" {
  region = "us-east-1"
}


data "aws_ami" "amazon_linux_2" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}


data "aws_vpc" "existing" {
  filter {
    name   = "tag:Name"
    values = [var.existing_vpc_name]
  }
}


data "aws_security_group" "existing" {
  filter {
    name   = "group-name"
    values = [var.existing_sg_name]
  }
}


data "aws_subnet" "existing" {
  vpc_id = data.aws_vpc.existing.id

  filter {
    name   = "cidr-block"
    values = [var.existing_subnet_cidr]
  }
}
