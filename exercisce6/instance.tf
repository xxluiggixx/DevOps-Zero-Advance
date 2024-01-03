resource "aws_key_pair" "dove-key" {
  key_name   = "dovekey"
  public_key = file("aws.pub")
}

resource "aws_instance" "dove-dove" {
  ami                    = var.amis[var.region]
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.dove-pub-1.id
  key_name               = aws_key_pair.dove-key.key_name
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  tags = {
    Name = "my-dove"
  }
}

resource "aws_ebs_volume" "vol_4_dove" {
  availability_zone = var.zone1
  size              = 3
  tags = {
    Name = "extr-vol-4-dove"
  }
}

resource "aws_volume_attachment" "atch_vol_dove" {
  device_name = "/dev/xvdh"
  volume_id   = aws_ebs_volume.vol_4_dove.id
  instance_id = aws_instance.dove-dove.id
}

output "PublicIP" {
  value = aws_instance.dove-dove.public_ip
}