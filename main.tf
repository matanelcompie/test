provider "aws" {
  region = "eu-central-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
resource "aws_instance" "ubuntu" {
  ami           = "ami-0d527b8c289b4af7f"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0289e4741447a9025"
}
