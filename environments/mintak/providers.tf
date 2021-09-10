
provider "google" {
  project               = "mintak-bxqa"
  region                = "us-central1"
  user_project_override = true          # for billing alert
  billing_project       = "mintak-bxqa" # for billing alert
}
