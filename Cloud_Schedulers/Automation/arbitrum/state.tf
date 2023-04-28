terraform {
    backend "gcs" {
      bucket  = "myc-node"
      prefix  = "cl/cloud-schedulers/Automation/arbitrum-auto-1.tfstate"
    }
  }