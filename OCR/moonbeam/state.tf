terraform {
    backend "gcs" {
      bucket  = "myc-node"
      prefix  = "cl/moonbeam-ocr.tfstate"
    }
  }