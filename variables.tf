#----root/variables.tf-----
variable "aws_region" {}

#------ storage variables
variable "project_name" {
  type = string
}
variable "bucket_count" {
  default = "1"
}


#-------networking variables
variable "vpc_cidr" {}
variable "public_cidrs" {
  type = list(string)
}
variable "accessip" {
  default = "0.0.0.0/0"
}

variable "service_ports" {
  default = ["22","80"]
}


#-------compute variables
variable "key_name" {}
variable "public_key_path" {}
variable "server_instance_type" {}
variable "instance_count" {
  default = 1
}