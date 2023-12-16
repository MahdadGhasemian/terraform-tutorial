variable "aws_credentials" {
  type = object({
    access_key = string
    secret_key = string
  })
}

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "ami_id" {
  type    = string
  default = "ami-0230bd60aa48260c6"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "key_name" {
  type    = string
  default = "terraform"
}

variable "tags" {
  type = object({
    Name       = string
    Created_by = string
  })
  default = {
    Name       = "server1"
    Created_by = "terraform"
  }
}