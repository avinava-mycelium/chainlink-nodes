terraform {
    backend "gcs" {
      bucket  = "myc-node"
      prefix  = "cl/moonriver-ocr.tfstate"
    }
  }