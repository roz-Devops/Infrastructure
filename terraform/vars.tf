variable "aws_region" { default = "us-east-2" }
variable "count_var" { default = "1" }
variable "cred_file" { default = "~/.aws/credentials" }
variable "instanceType" { default = "t2.micro" }

variable "aws_vpc_id" { default = "string1" }
variable "envName" { default = "string1" }
variable "publicip" { default = true }
variable "releaseVersion" { default = "1.0.0" }
variable "securitygroup" { default = "string1" }
output "ov" {
  value = "{var.securitygroup}"
}
variable "subnetName" { default = "sub"}
variable "serviceName" {
 default = "string"
}
variable "serviceVersion" {
  default = "serviceVersion"
}


