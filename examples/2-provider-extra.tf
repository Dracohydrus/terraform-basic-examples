terraform {
  required_version = ">= 1.1.9"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.18"
    }
  }
}

# Extra provider for ca-central-1
provider "aws" {
  alias  = "ca-central-1"
  region = "ca-central-1"
}

# Extra provider for us-east-1
provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}
