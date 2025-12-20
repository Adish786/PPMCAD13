variable "ami_id" {
    type = string
    default = "ami-0866a3c8686eaeeba"
}

variable "instance" {
  default = {
    "ubuntu-server" = "t3.micro"
    "aws-linux-server" = "t3.nano"
    "windows-server" = "t3.medium"
  }
  type = map(string)
}