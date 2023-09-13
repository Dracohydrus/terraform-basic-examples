# Provider
terraform {
  required_version = ">= 1.1.9"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.18"
    }
  }
}

provider "aws" {
  alias  = "ca-central-1"
  region = "ca-central-1"
}

provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}


# EC2 Instances
resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_instance" "web2" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  provider      = aws.ca-central-1

  tags = {
    Name = "HelloWorld2"
  }
}

# Outputs
output "public_ip" {
  value = aws_instance.web.public_ip
}
