terraform {
    backend "gcs" {
      bucket  = "myc-node"
      prefix  = "cl/arbitrum-auto-1.tfstate"
    }
  }