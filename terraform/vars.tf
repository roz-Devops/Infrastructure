variable "aws_region" { default = "us-east-2" }
variable "count_var" { default = 1 }
variable "cred_file" { default = "~/.aws/credentials" }
variable "instanceType" { default = "t2.micro" }

variable "aws_vpc_id" { type = "string" }
variable "envName" { type = "string" }
variable "publicip" { default = true }
variable "releaseVersion" { type = "string" }
variable "securitygroup" { type = "string" }
variable "subnetName" { type = "string" }
variable "serviceName" {
  default = "Service_name"
}
variable "serviceVersion" {
  default = "serviceVersion"
}


