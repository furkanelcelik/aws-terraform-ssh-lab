variable "ssh_key" {
  description = "Provides custom public SSH key."
  type        = string
  sensitive   = true # Marks the key as sensitive to hide it from logs
}

variable "key_name" {
  description = "The name for the AWS key pair."
  type        = string
  default     = "cmtr-s5mse3rq-keypair"
}

variable "instance_name" {
  description = "The name for the EC2 instance."
  type        = string
  default     = "cmtr-s5mse3rq-ec2"
}

variable "common_tags" {
  description = "Common tags to apply to all resources."
  type        = map(string)
  default = {
    Project = "epam-tf-lab"
    ID      = "cmtr-s5mse3rq"
  }
}
