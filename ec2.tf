resource "aws_instance" "main" {
  ami           = data.aws_ami.amazon_linux_2.id
  instance_type = "t2.micro"
  key_name      = aws_key_pair.main.key_name
  subnet_id     = data.aws_subnet.existing.id

  vpc_security_group_ids = [data.aws_security_group.existing.id]

  tags = merge(var.common_tags, {
    Name = var.instance_name
  })
}
