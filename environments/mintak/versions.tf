terraform {
  backend "gcs" {
    bucket = "mintak-terraform-state"
    prefix = "terraform"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.83.0"
    }
  }

  required_version = ">= 1.0.5"
}
