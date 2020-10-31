#VPC Creation
resource "aws_vpc" "MyVpc"{
    cidr_block = var.VPC_cidr
    enable_dns_support=true
      tags = {
    Name = "new VPC from Terraform"
  }
}

# Web Creation
resource "aws_subnet" "web"{
    vpc_id      =   aws_vpc.MyVpc.id
    cidr_block  =   cidrsubnet(var.VPC_cidr,8,0)
    availability_zone ="us-west-2a"
         tags = {
    Name = "web"
     }

}


# app Creation
resource "aws_subnet" "app"{
    vpc_id      =   aws_vpc.MyVpc.id
    cidr_block  =   cidrsubnet(var.VPC_cidr,8,1)
    availability_zone ="us-west-2b"
         tags = {
    Name = "app"
     }

}

# db Creation
resource "aws_subnet" "db"{
    vpc_id      =   aws_vpc.MyVpc.id
    cidr_block  =   cidrsubnet(var.VPC_cidr,8,2)
    availability_zone ="us-west-2c"
         tags = {
    Name = "db"
     }

}


# mgmt Creation
resource "aws_subnet" "mgmt"{
    vpc_id      =   aws_vpc.MyVpc.id
    cidr_block  =   cidrsubnet(var.VPC_cidr,8,3)
    availability_zone ="us-west-2a"
         tags = {
    Name = "mgmt"
     }

}
