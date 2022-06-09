terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.5.0"
    }
  }
}

provider "aws" {
    region = "us-east-2"
  # Configuration options
  default_tags {
    tags = {
      name    = "terraform"
      project = "labs"
      environment = var.environment
    }
  }

}