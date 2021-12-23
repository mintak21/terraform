
provider "google" {
  project               = "mintak-h83y"
  region                = "us-central1"
  user_project_override = true          # for billing alert
  billing_project       = "mintak-h83y" # for billing alert
}
