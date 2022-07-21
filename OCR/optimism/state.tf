terraform {
    backend "gcs" {
      bucket  = "myc-node"
      prefix  = "cl/optimism-ocr.tfstate"
    }
  }