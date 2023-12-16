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

variable "env_name" {
  type = list
  default = [
    "build",
    "dev",
    "stage",
    "production"
  ]
}

