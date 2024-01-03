provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "intro" {
  ami                    = var.aws_image
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  key_name               = "terraform"
  vpc_security_group_ids = ["sg-0deec4d9fb7615516"]
  tags = {
    Name    = "Terraform-instance",
    Project = "Vproapp"
  }
}