terraform {
  backend "gcs" {
    bucket = "mintak-tfstate"
    prefix = "terraform"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.5.0"
    }
  }

  required_version = ">= 1.0"
}
