terraform {
  backend "s3" {
    bucket  = "lucianbrit-app-terraform-state"
    key     = "develop/lucianbritapp.tfstate"
    region  = "eu-central-1"
    encrypt = true
  }
}

locals {
  prefix = "${var.prefix}-${terraform.workspace}"

  common_tags = {
    Environment = terraform.workspace
    Project     = var.project
    ManagedBy   = "Terraform"
    Owner       = "Oleksandr Malishevskiy"
  }
}
