terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-2"
}

resource "aws_instance" "Gopiapp_server" {
  ami           = "ami-050cd642fd83388e4"
  instance_type = "t2.micro"
  
  
  tags = {
    Name = "byGopiInstance"
  }
}
