variable "service_account_name" {
  description = "Service account name"
  default     = "Cloud_Schedulers_Service_Account"
}
variable "service_account_version" {
  description = "Service account version"
  default     = "1"
}
variable "project_id" {
  description = "The gcp project ID where the resources need to be deployed"
  default = "avian-direction-235610"
}
variable "region" {
  default = "us-central1"
}
variable "zone" {
  default = "us-central1-a"
}
variable "scheduler_job_description" {
  default = "node reboot"
}
variable "scheduler_job_schedule" {
  default = "0 10 * * *"
}
variable "scheduler_job_time_zone" {
  default = "Asia/Calcutta"
}
variable "scheduler_job_attempt_deadline" {
  default = "320s"
}
variable "retry_config_retry_count" {
  default = 1
}
variable "retry_config_max_retry_duration" {
  default = "0s"
}
variable "retry_config_max_max_backoff_duration" {
  default = "3600s"
}
variable "retry_config_max_min_backoff_duration" {
  default = "5s"
}
variable "retry_config_max_doublings" {
  default = 5
}
variable "http_method" {
  default = "POST"
}
variable "User-Agent" {
  default = "Google-Cloud-Scheduler"
}
variable "scope" {
  default = "https://www.googleapis.com/auth/cloud-platform"
}
variable "node_name" {
  default = "cl-eth-vpn-1"
}