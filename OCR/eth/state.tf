terraform {
    backend "gcs" {
      bucket  = "myc-node"
      prefix  = "cl/eth-ocr.tfstate"
    }
  }