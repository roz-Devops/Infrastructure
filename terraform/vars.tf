variable "aws_region" { }
variable "ami_id" { default = "ami-02c9cd67ee3986af1" }
variable "count_var" { default = 3 }
variable "cred_file" { default = "~/.aws/credentials" }

# variable "cred_file" { default = "/var/jenkins_home/aws_keys/credentials" }
variable "instanceType" { default = "t2.micro" }
variable "aws_vpc_id" { }
variable "cidr_vpc" { default = "10.0.0.0/16" }
variable "subnets" {
  default = ["subnet-03cf8740d86e104b5", "subnet-060f835e7053f5cc8"]
  type    = "list"
}
variable "cidr_subnet" { default = "10.0.0.0/24" }
variable "envName" {  }
variable "publicip" { default = true }
variable "releaseVersion" { default = "1.0.0" }
variable "securitygroup" { default = "sg-00b66f1ea132e25a4" }
variable "subnetName" { default = "subnet_name" }
variable "serviceName" {
  default = "Service_name"
}
variable "serviceVersion" {
  default = "serviceVersion"
}

variable "subnet_scope" {
  default = ""
}

