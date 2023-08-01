variable "instance_name" {
        description = "Name of the instance to be created"
        default = "assignment4"
}
variable "instance_type" {
        default = "t2.micro"
}
variable "ami_id" {
        description = "The AMI to use"
        default = "ami-007855ac798b5175e"
}
variable "ami_key_pair_name" {
        default = "virginia"
}
variable "vpc_cidr" {
        default = "178.0.0.0/16"
}
variable "public_subnet_cidr" {
        default = "178.0.10.0/24"
}
