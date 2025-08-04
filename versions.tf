terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0.0"  # Stable older version; adjust as needed
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}