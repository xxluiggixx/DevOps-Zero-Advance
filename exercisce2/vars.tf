variable "region" {
  default = "us-east-1"
}

variable "zone" {
  default = "us-east-1a"
}

variable "amis" {
  type = map(any)
  default = {
    us-east-1 = "ami-079db87dc4c10ac91"
    us-east-2 = "ami-0ee4f2271a4df2d7d"
  }
}