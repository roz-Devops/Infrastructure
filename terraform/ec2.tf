provider "aws" {
  shared_credentials_file = "${var.cred_file}"
  profile                 = "default"
  region                  = "${var.aws_region}"
}

data "aws_vpc" "selected" {
  # cidr_block = "${var.cidr_vpc}"
  id = "${var.aws_vpc_id}"
  tags = {
    Name = "tera_vpc"
  }
}

data "aws_ami" "ubuntu_ami" {
  most_recent = true
  filter {
    name   = "name"
    values = ["golden.image-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["823655085559"]
}
data "aws_subnet_ids" "selected_subnet" {
  vpc_id = "${data.aws_vpc.selected.id}"
}

data "aws_security_group" "security_group" {
  id = "${var.securitygroup}"
}

### Launch Instances
resource "aws_instance" "app" {
  count                       = "${var.count_var}"
  subnet_id                   = "${element(tolist(data.aws_subnet_ids.selected_subnet.ids), count.index)}"
  key_name                    = "aws"
  ami                         = "${data.aws_ami.ubuntu_ami.id}"
  instance_type               = "t2.micro"
  security_groups             = ["${data.aws_security_group.security_group.id}"]
  associate_public_ip_address = "${var.publicip}"


  root_block_device {
    volume_size = 8
  }
  tags = {
    Name           = "${var.serviceName}"
    Service        = "${var.serviceName}"
    ServiceVersion = "${var.serviceVersion}"
    EnvName        = "${var.envName}"
    InstanceType   = "${var.instanceType}"
  }
}
 
