variable "instance_name1" {
        description = "Name of the instance to be created"
        default = "virginia-box"
}
variable "instance_type" {
        default = "t2.micro"
}
variable "ami_id1" {
        description = "The AMI to use for virginia"
        default = "ami-007855ac798b5175e"
}
variable "ami_key_pair_name1" {
        default = "virginia"
}
variable "instance_name2" {
        description = "Name of the instance to be created"
        default = "ohio-box"
}
variable "ami_id2" {
        description = "The AMI to use for Ohio"
        default = "ami-0a695f0d95cefc163"
}
variable "ami_key_pair_name2" {
        default = "ohio"
}
