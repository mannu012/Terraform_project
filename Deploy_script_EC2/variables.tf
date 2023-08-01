variable "instance_name" {
        description = "Name of the instance to be created"
        default = "assignment05"
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
