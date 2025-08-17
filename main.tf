
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


provider "aws" {
  region = "us-east-1" 
}


resource "aws_key_pair" "key_pair_name_key" {
  key_name   = "emeka_new" 
public_key = file("key_pair_path.pub")
}


resource "aws_instance" "ubuntu_servers" {
  count         = 2 
  ami           = "ami-020cba7c55df1f615" 
  instance_type = "t2.micro"
  key_name      = aws_key_pair.key_pair_name_key 

  tags = {
    Name = "ubuntu-server-${count.index + 1}" 
  }
}


output "instance_public_ips" {
  value = aws_instance.ubuntu_servers[*].public_ip 
}


output "instance_public_dns" {
  value = aws_instance.ubuntu_servers[*].public_dns 
}