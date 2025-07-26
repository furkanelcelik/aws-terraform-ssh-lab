resource "aws_key_pair" "main" {
  key_name   = var.key_name
  public_key = var.ssh_key
  tags       = var.common_tags
}
