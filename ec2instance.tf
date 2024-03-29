resource "aws_instance" "instance" {
  ami = "ami-0d442a425e2e0a743"
  instance_type               = "t3.micro"
  availability_zone           = "us-west-2a"
  associate_public_ip_address = true
  key_name                    = "vockey"
  vpc_security_group_ids      = ["sg-095bfc19ca0de1120"]
  subnet_id                   = "subnet-07394ef2e4689bffe"
  # iam_instance_profile        = "LabRole"
  count = 2
  tags = {
    Name = "Sandbox1"
  }
}
