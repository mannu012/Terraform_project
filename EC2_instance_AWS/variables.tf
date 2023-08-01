variable "instance_name" {
        description = "Name of the instance to be created"
        default = "server01"
}
variable "instance_type" {
        default = "t2.micro"
}
variable "subnet_id" {
        description = "The VPC subnet the instance(s) will be created in"
        default = "subnet-0078c2d865e074e14"
}
variable "ami_id" {
        description = "The AMI to use"
        default = "ami-0a695f0d95cefc163"
}
variable "ami_key_pair_name" {
        default = "ohio"
}
