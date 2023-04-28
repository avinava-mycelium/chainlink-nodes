terraform {
    backend "gcs" {
      bucket  = "myc-node"
      prefix  = "cl/cloud-schedulers/Automation/bsc-auto-1.tfstate"
    }
  }