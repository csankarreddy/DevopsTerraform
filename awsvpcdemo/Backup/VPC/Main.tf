resource "aws_vpc" "MyVpc"{
    cidr_block = "192.168.0.0/16"
    enable_dns_support=true
      tags = {
    Name = "new VPC from Terraform"
  }
}