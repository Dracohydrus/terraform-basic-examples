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
