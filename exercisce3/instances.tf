resource "aws_key_pair" "dove-key" {
  key_name   = "dovekey"
  public_key = file("aws.pub")
}

resource "aws_instance" "dove_inst" {
  ami                    = var.amis[var.region]
  instance_type          = "t2.micro"
  availability_zone      = var.zone
  key_name               = aws_key_pair.dove-key.key_name
  vpc_security_group_ids = ["sg-0deec4d9fb7615516"]
  tags = {
    Name    = "Terraform-instance",
    Project = "Vproapp"
  }
  provisioner "file" {
    source      = "web.sh"
    destination = "/tmp/web.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod u+x /tmp/web.sh",
      "sudo /tmp/web.sh"
    ]
  }
  connection {
    user        = var.user
    private_key = file("aws")
    host        = self.public_ip
  }
}