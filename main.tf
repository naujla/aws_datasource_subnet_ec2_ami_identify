data "aws_vpc" "vpc-id" {
  tags = {
    vpc = "my-vpc"
  }
}

output "vpc-id" {
  value = data.aws_vpc.vpc-id.id
}

data "aws_subnet" "subnet-id" {
  tags = {
    subnet = "public-subnet"
  }
}

output "subnet-id" {
  value = data.aws_subnet.subnet-id.id
}

# Search for latest Amazon AMI and Filter based on requirement
data "aws_ami" "name" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

    filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
}

output "aws-ami" {
  value = data.aws_ami.name.id
}

data "aws_security_groups" "security-id" {
  tags = {
    name = "webserver-sg"
  }
}

output "subnet-id" {
  value = data.aws_security_groups.security-id.ids
}

#Create resource using the ami image search based on filter
resource "aws_instance" "name" {
  ami = data.aws_ami.name.id
  instance_type = "t3.nano"
  subnet_id = data.aws_subnet.subnet-id.id
  security_groups = data.aws_security_groups.security-id.ids
}
