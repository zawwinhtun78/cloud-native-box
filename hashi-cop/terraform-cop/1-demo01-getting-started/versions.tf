terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.12.0"
    }
  }
}

provider "aws" {
  shared_config_files      = ["/home/vagrant/.aws/config"]
  shared_credentials_files = ["/home/vagrant/.aws/credentials"]
  profile                  = "heartworks-nonprod"
  alias                    = "heartworks-nonprod"
  region                   = var.heartworks_nonprod_aws_region
}

provider "aws" {
  shared_config_files      = ["/home/vagrant/.aws/config"]
  shared_credentials_files = ["/home/vagrant/.aws/credentials"]
  profile                  = "heartworks-dev"
  alias                    = "heartworks-dev"
  region                   = var.heartworks_dev_aws_region
}

provider "aws" {
  shared_config_files      = ["/home/vagrant/.aws/config"]
  shared_credentials_files = ["/home/vagrant/.aws/credentials"]
  profile                  = "heartworks-security"
  alias                    = "heartworks-security"
  region                   = var.heartworks_security_aws_region
}