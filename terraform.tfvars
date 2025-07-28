aws_region           = "us-east-1"
key_name             = "cmtr-s5mse3rq-keypair"
instance_name        = "cmtr-s5mse3rq-ec2"
instance_type        = "t2.micro"
existing_vpc_name    = "cmtr-s5mse3rq-vpc"
existing_subnet_cidr = "10.0.1.0/24"
existing_sg_name     = "cmtr-s5mse3rq-sg"
common_tags = {
  Project = "epam-tf-lab"
  ID      = "cmtr-s5mse3rq"
}
