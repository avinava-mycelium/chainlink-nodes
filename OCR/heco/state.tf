terraform {
    backend "gcs" {
      bucket  = "myc-node"
      prefix  = "cl/heco-ocr.tfstate"
    }
  }