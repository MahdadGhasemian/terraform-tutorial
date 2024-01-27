# On the localstack
module "ec2_server" {
  # providers = {
  #   aws = aws.localstack
  # }
  source = "./module/ec2"
  count  = 4
  tags = {
    Name       = "server-${var.env_name[count.index]}"
    Created_by = "terraform"
  }
}

resource "aws_s3_bucket" "example" {
  bucket = var.dev_bucket_name

  tags = {
    Name        = "bucket ${var.dev_bucket_name}"
    Created_by = "terraform"
  }
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.example.id
  acl    = "public-read-write"
}
