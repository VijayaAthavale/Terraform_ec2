resource "aws_instance" "instance" {
  ami = "ami-0d442a425e2e0a743"
  instance_type               = "t3.micro"
  availability_zone           = "us-west-2a"
  associate_public_ip_address = true
  key_name                    = "vockey"
  vpc_security_group_ids      = ["sg-0a8c1da08a1227111"]
  subnet_id                   = "subnet-059d83d99ec87eea9"
  # iam_instance_profile        = "LabRole"
  count = 1
  tags = {
    Name = "Sandbox1"
  }
}