module "ec2_server" {
  source = "./module/ec2"
  count  = 4
  tags = {
    Name       = "server-${var.env_name[count.index]}"
    Created_by = "terraform"
  }
}


