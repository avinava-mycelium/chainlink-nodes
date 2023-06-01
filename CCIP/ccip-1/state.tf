terraform {
    backend "gcs" {
      bucket  = "myc-node"
      prefix  = "cl/ccip-1.tfstate"
    }
  }