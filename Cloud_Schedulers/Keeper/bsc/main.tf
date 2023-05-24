resource "google_cloud_scheduler_job" "job" {
  name             = "cs-${var.node_name}"
  description      = "${var.node_name} ${var.scheduler_job_description}"
  schedule         = var.scheduler_job_schedule
  time_zone        = var.scheduler_job_time_zone
  attempt_deadline = var.scheduler_job_attempt_deadline

  retry_config {
    retry_count = var.retry_config_retry_count
    max_retry_duration = var.retry_config_max_retry_duration
    max_backoff_duration = var.retry_config_max_max_backoff_duration
    min_backoff_duration = var.retry_config_max_min_backoff_duration
    max_doublings = var.retry_config_max_doublings
  }

  http_target {
    http_method = var.http_method
    headers = {
      "User-Agent" = var.User-Agent
    }
    uri         = "https://compute.googleapis.com/compute/v1/projects/${var.project_id}/zones/${var.zone}/instances/${var.node_name}/reset"
    oauth_token {
      service_account_email = data.google_secret_manager_secret_version.sa.secret_data // Service account details pulled from secrets manager
      scope = var.scope
    }
  }
}