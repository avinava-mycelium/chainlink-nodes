provider "google" {
  project     = var.project_id
  credentials = file("../../../service_account.json")
  region = var.region
}
