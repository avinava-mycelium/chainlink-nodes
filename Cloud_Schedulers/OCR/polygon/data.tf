// Data sources to pull service account details from secrests manager

data "google_secret_manager_secret_version" "sa" {
  provider = google-beta
  secret   = var.service_account_name
  version  = var.service_account_version
  project  = var.project_id
}