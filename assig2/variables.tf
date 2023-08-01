variable "instance_name" {
        description = "Name of the instance to be created"
        default = "server01"
}
variable "instance_type" {
        default = "t2.micro"
}
variable "ami_id" {
        description = "The AMI to use"
        default = "ami-0a695f0d95cefc163"
}
variable "ami_key_pair_name" {
        default = "ohio"
}
