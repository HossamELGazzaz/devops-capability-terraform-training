terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.1.0" # terraform required version
}

provider "aws" {
  region = "us-east-1"
}
