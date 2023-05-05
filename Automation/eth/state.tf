terraform {
    backend "gcs" {
      bucket  = "myc-node"
      prefix  = "cl/eth-auto-1.tfstate"
    }
  }