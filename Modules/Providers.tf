terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.88.0"
    }
  }
}

provider "aws" {
  #access_key = "AKIA2XSAEMJ7M362A5YX"
  #secret_key = "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"
  region     = "us-east-1"
  
  profile = "default"
}
