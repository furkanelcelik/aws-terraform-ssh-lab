terraform {
  required_version = ">= 1.5.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

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
    values = ["cmtr-s5mse3rq-vpc"]
  }
}


data "aws_security_group" "existing" {
  filter {
    name   = "group-name"
    values = ["cmtr-s5mse3rq-sg"]
  }
}

data "aws_subnet" "existing" {
  vpc_id = data.aws_vpc.existing.id

  filter {
    name   = "cidr-block"
    values = ["10.0.1.0/24"]
  }
}

