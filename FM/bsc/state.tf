terraform {
    backend "gcs" {
      bucket  = "myc-node"
      prefix  = "cl/bsc-fm.tfstate"
    }
  }