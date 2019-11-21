variable "aws_region" { }
variable "count_var" { }
variable "cred_file" { default = "~/.aws/credentials" }
variable "instanceType" { default = "t2.micro" }

variable "aws_vpc_id" { } 
variable "envName" { default = "string1" }
variable "publicip" { default = true }
variable "releaseVersion" { default = "1.0.0" }
variable "securitygroup" { }
output "ov" {
  value = "{var.securitygroup}"
}
variable "subnetName" { default = "sub"}
variable "serviceName" {
 default = "string1"
}
variable "serviceVersion" {
  default = "serviceVersion"
}


