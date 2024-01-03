resource "aws_instance" "dove_inst" {
  ami                    = var.amis[var.region]
  instance_type          = "t2.micro"
  availability_zone      = var.zone
  key_name               = "terraform"
  vpc_security_group_ids = ["sg-0deec4d9fb7615516"]
  tags = {
    Name    = "Terraform-instance",
    Project = "Vproapp"
  }
}