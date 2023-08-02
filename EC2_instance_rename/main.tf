provider "aws" {
    access_key = "XXXXXXXXXXXX"
    secret_key = "XXXXXXXXXXXXXXX"
    region = "us-east-1"
}
resource "aws_instance" "ec2instance1" {
    ami = "${var.ami_id1}"
    instance_type = "${var.instance_type}"
    key_name = "${var.ami_key_pair_name1}"
        tags = {
          Name ="${var.instance_name1}"
          }
}
provider "aws" {
    alias = "ohiovm"
    access_key = "AKIASJ2YKAR4DL3NNPHW"
    secret_key = "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"
    region = "us-east-2"
}
resource "aws_instance" "ec2instance2" {
    provider = aws.ohiovm
    ami = "${var.ami_id2}"
    instance_type = "${var.instance_type}"
    key_name = "${var.ami_key_pair_name2}"
        tags = {
          Name ="${var.instance_name2}"
          }
}
