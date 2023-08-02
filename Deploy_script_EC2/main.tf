provider "aws" {
    access_key = "XXXXXXXXX"
    secret_key = "XXXXXXX"
    region = "us-east-1"
}

resource "aws_instance" "assign5_ec2instance" {
    ami = "${var.ami_id}"
    instance_type = "${var.instance_type}"
    key_name = "${var.ami_key_pair_name}"
    security_groups = ["launch-wizard-1"]
        tags = {
          Name ="${var.instance_name}"
          }

user_data = <<-EOF
  #!/bin/bash
  echo "*** Installing apache2"
  sudo apt update -y
  sudo apt install apache2 -y
  echo "*** Completed Installing apache2"
  hostname -I | awk '{print $1}' >> /home/ubuntu/ip.txt
  EOF
}
