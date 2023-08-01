provider "aws" {
    access_key = "AKIASJ2YKAR4DL3NNPHW"
    secret_key = "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"
    region = "us-east-2"
}

resource "aws_instance" "assign1_ec2instance" {
    ami = "${var.ami_id}"
    subnet_id = "${var.subnet_id}"
    instance_type = "${var.instance_type}"
    key_name = "${var.ami_key_pair_name}"
        tags = {
          Name ="${var.instance_name}"
          }
}
