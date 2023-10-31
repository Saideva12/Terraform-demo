resource "aws_vpc" "tf-ecomm" {
  cidr_block       = "192.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "vpc-ecomm"
  }
}
