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
  type = list(any)
  default = [
    "build",
    "dev",
    "stage",
    "production"
  ]
}

variable "dev_bucket_name" {
  type = string
  default = "devopsuser1988-bucket100"
}

