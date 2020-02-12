provider "aws" {
  version = "~> 2"
}

provider "random" {
  version = "~> 2"
}

resource "random_string" "random" {
  length  = 8
  lower   = true
  upper   = false
  number  = false
  special = false
}

locals {
  backend_name = "example-backend-${random_string.random.result}"
}

module "terraform-example-app" {
  source       = "../"
  backend_name = local.backend_name
}

output "backend_name" {
  value = local.backend_name
}