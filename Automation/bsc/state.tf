terraform {
    backend "gcs" {
      bucket  = "myc-node"
      prefix  = "cl/bsc-auto-1.tfstate"
    }
  }