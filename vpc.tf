resource "aws_vpc" "tf-ecomm" {
  cidr_block       = "192.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "vpc-ecomm"
  }
}

resource "aws_subnet" "tf-ecomm-pub-sn-A" {
  vpc_id     = aws_vpc.tf-ecomm.id
  cidr_block = "192.0.0.0/24"
  availability_zone = "us-east-2a"

  tags = {
    Name = "ecomm-pub-subnet-A"
  }
}
