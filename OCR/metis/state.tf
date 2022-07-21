terraform {
    backend "gcs" {
      bucket  = "myc-node"
      prefix  = "cl/metis-ocr.tfstate"
    }
  }