resource "aws_instance" "web" {
  
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.allow_sg.id]
  iam_instance_profile   = var.iam_instance_profile
}