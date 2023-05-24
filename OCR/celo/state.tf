terraform {
    backend "gcs" {
      bucket  = "myc-node"
      prefix  = "cl/celo-ocr.tfstate"
    }
  }