variable "aws_region" { default = "us-east-2" }
variable "count_var" { type = number }
variable "cred_file" { default = "~/.aws/credentials" }
variable "instanceType" { default = "t2.micro" }

variable "aws_vpc_id" { type = "string" }
variable "envName" { type = "string" }
variable "publicip" { default = true }
variable "releaseVersion" { default = "1.0.0" }
variable "securitygroup" { type = "string" }
variable "subnetName" { type = "string" }
variable "serviceName" {
 type = string
}
variable "serviceVersion" {
  default = "serviceVersion"
}


