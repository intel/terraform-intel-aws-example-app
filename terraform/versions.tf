terraform {
  required_version = ">=1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.36.0"
    }
  }
  cloud {
    organization = "intel-hashicorp"
    workspaces {
      name = "intel-aws-example-app"
    }
  }
}
