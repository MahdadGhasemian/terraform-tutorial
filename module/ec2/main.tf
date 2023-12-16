resource "aws_instance" "ec2" {
  ami = var.ami_id
  instance_market_options {
    spot_options {
      max_price = 0.0
    }
  }
  instance_type = var.instance_type
  key_name      = var.key_name
  tags          = var.tags
}