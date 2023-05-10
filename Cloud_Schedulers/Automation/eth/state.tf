terraform {
    backend "gcs" {
      bucket  = "myc-node"
      prefix  = "cl/cloud-schedulers/Automation/eth-auto-1.tfstate"
    }
  }