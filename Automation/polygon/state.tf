terraform {
    backend "gcs" {
      bucket  = "myc-node"
      prefix  = "cl/polygon-auto-1.tfstate"
    }
  }