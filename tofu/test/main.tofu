terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.0"
    }
    github = {
      source  = "integrations/github"
      version = "5.45.0"
    }
    quay = {
      source = "registry.terraform.io/enthought/quay"
    }
  }
  required_version = "1.9.0"
  backend "s3" {
    # These values will be overridden by -backend-config in CI
    bucket = ""
    key    = ""
    region = ""
  }
}

provider "quay" {
  url = "https://quay.io"
}

provider "aws" {
  region = var.aws_region
}

provider "github" {
  owner = var.org_name
  app_auth {} # Using `GITHUB_APP_XXX` environment variables in CI
}

resource "null_resource" "hello_worlde3" {
  provisioner "local-exec" {
    command = "echo eeesseedf, ${var.environment}!"
  }
}
