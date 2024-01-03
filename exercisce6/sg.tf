resource "aws_security_group" "allow_ssh" {
  name        = "dove-stack-sg-1"
  description = "Sec Grp for dove ssh"
  vpc_id      = aws_vpc.dove.id

  ingress {
    description = "Ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.myip]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}