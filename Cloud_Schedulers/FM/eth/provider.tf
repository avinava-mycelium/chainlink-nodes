provider "google" {
  project     = var.project_id
  credentials = file("../../../service_account.json")
  region = var.region
}

terraform {
  required_version = "0.13.0"
}