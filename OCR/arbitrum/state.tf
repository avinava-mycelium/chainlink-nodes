terraform {
    backend "gcs" {
      bucket  = "myc-node"
      prefix  = "cl/arbitrum-ocr.tfstate"
    }
  }