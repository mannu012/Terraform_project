provider "aws" {
    access_key = "XXXXXXXXXXX"
    secret_key = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
    region = "us-east-1"
}
# Create a VPC
resource "aws_vpc" "demo-vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "demo-vpc"
  }
}
resource "aws_internet_gateway" "demo-igw" {
  vpc_id = aws_vpc.demo-vpc.id

  tags = {
    Name = "demo-igw"
  }
}
resource "aws_subnet" "demo-public-subnet" {
  vpc_id            = aws_vpc.demo-vpc.id
  cidr_block        = var.public_subnet_cidr
  map_public_ip_on_launch = true
  availability_zone = "us-east-1a"
  tags = {
    Name = "demo-public-subnet"
  }
}
resource "aws_route_table" "demo-public-rt" {
  vpc_id = aws_vpc.demo-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.demo-igw.id
  }
  tags = {
    Name = "demo-public-rt"
  }
}
resource "aws_route_table_association" "public_rt_asso" {
  subnet_id      = aws_subnet.demo-public-subnet.id
  route_table_id = aws_route_table.demo-public-rt.id
}
resource "aws_instance" "ec2instance" {
    ami = "${var.ami_id}"
    instance_type = "${var.instance_type}"
    key_name = "${var.ami_key_pair_name}"
	subnet_id = aws_subnet.demo-public-subnet.id
	tags = {
	  Name ="${var.instance_name}"
	  }	
}
