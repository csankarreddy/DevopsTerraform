resource "aws_vpc" "MyVpc_schalla"{
    cidr_block      = var.VPC_Cidr
    enable_dns_support= true

    tags = {
    Name = var.VPC_Tag
  }
}

## WEB  SUBNET CREATION
resource "aws_subnet" "WEB"{
  vpc_id                  = aws_vpc.MyVpc_schalla.id
  cidr_block              = cidrsubnet(var.VPC_Cidr,8,0)
  #availability_zone        = format("%sa",var.region)
  availability_zone        = format("%s%s",var.region,var.availability_zone[0])

    tags = {
    Name = var.subnet_Tag[0]
  }
}


## app  SUBNET CREATION
resource "aws_subnet" "APP"{
  vpc_id                  = aws_vpc.MyVpc_schalla.id
  cidr_block              = cidrsubnet(var.VPC_Cidr,8,1)
  #availability_zone        = format("%sb",var.region)
  availability_zone        = format("%s%s",var.region,var.availability_zone[1])

    tags = {
    Name = var.subnet_Tag[1]
  }
}

## DB  SUBNET CREATION
resource "aws_subnet" "DB"{
  vpc_id                  = aws_vpc.MyVpc_schalla.id
  cidr_block              = cidrsubnet(var.VPC_Cidr,8,2)
  #availability_zone        = format("%sc",var.region)
  availability_zone        = format("%s%s",var.region,var.availability_zone[2])
    tags = {
    Name = var.subnet_Tag[2]
  }
}

## MGMT  SUBNET CREATION
resource "aws_subnet" "MGMT"{
  vpc_id                  = aws_vpc.MyVpc_schalla.id
  cidr_block              = cidrsubnet(var.VPC_Cidr,8,3)
 # availability_zone        = format("%sa",var.region)
  availability_zone        = format("%s%s",var.region,var.availability_zone[3])

    tags = {
    Name = var.subnet_Tag[3]
  }
}
