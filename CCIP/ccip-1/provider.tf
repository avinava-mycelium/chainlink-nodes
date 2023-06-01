provider "google" {
  project     = var.project_id
  credentials = file("../../service_account.json")
}
terraform {
  required_version = "0.13.0"
}