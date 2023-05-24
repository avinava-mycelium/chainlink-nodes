terraform {
    backend "gcs" {
      bucket  = "myc-node"
      prefix  = "cl/cloud-schedulers/OCR/polygon-ocr.tfstate"
    }
  }