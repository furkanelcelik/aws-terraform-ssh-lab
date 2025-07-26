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
  default = {
    Project = "epam-tf-lab"
    ID      = "cmtr-s5mse3rq"
  }
}
