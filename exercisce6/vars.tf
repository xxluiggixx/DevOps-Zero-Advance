variable "region" {
  default = "us-east-1"
}

variable "zone1" {
  default = "us-east-1a"
}
variable "zone2" {
  default = "us-east-1b"
}
variable "zone3" {
  default = "us-east-1c"
}

variable "amis" {
  type = map(any)
  default = {
    us-east-1 = "ami-079db87dc4c10ac91"
    us-east-2 = "ami-0ee4f2271a4df2d7d"
  }
}

variable "user" {
  default = "ec2-user"
}

variable "myip" {
  default = "181.116.200.117/32"
}