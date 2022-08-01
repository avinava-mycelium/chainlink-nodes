terraform {
    backend "gcs" {
      bucket  = "myc-node"
      prefix  = "cl/gains-test-fm.tfstate"
    }
  }