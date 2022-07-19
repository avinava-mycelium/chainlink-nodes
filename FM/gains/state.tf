terraform {
    backend "gcs" {
      bucket  = "myc-node"
      prefix  = "cl/gains-fm.tfstate"
    }
  }