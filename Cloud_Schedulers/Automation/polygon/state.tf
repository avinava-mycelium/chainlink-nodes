terraform {
  backend "gcs" {
    bucket = "myc-node"
    prefix = "cl/cloud-schedulers/Automation/polygon-auto-1.tfstate"
  }
}