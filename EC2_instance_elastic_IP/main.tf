provider "aws" {
    access_key = "XXXXXXXXXXXXX"
    secret_key = "XXXXXXXXXXXXXXXXXXXXX"
    region = "us-east-2"
}

resource "aws_instance" "assign1_ec2instance" {
    ami = "${var.ami_id}"
    instance_type = "${var.instance_type}"
    key_name = "${var.ami_key_pair_name}"
	tags = {
	  Name ="${var.instance_name}"
	  }	
} 
#Create an Elastic IP
resource "aws_eip" "demo-eip" {
  vpc = true
}
#Associate EIP with EC2 Instance
resource "aws_eip_association" "demo-eip-association" {
  instance_id   = aws_instance.assign1_ec2instance.id
  allocation_id = aws_eip.demo-eip.id
}
output "elastic_ip" {
  value = aws_eip.demo-eip.public_ip
}
