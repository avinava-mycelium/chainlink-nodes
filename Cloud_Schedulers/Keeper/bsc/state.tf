terraform {
    backend "gcs" {
      bucket  = "myc-node"
      prefix  = "cl/cloud-schedulers/FM/bsc-kpr.tfstate"
    }
  }