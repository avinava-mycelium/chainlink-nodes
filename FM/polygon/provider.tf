provider "google" {
  region      = var.region
  project     = var.project_id
  credentials = file("../service_account.json")
  zone        = var.zone
}
