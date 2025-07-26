variable "ssh_key" {
  description = "Provides custom public SSH key."
  type        = string
  sensitive   = true
}

variable "key_name" {
  description = "The name for the AWS key pair."
  type        = string
}

variable "instance_name" {
  description = "The name for the EC2 instance."
  type        = string
}

variable "common_tags" {
  description = "Common tags to apply to all resources."
  type        = map(string)

}

variable "existing_vpc_name" {
  description = "The name tag of the existing VPC to use."
  type        = string
}

variable "existing_sg_name" {
  description = "The name of the existing security group to use."
  type        = string
}

variable "existing_subnet_cidr" {
  description = "The CIDR block of the existing subnet to use."
  type        = string
}
