terraform {
    backend "gcs" {
      bucket  = "myc-node"
      prefix  = "cl/xdai-ocr.tfstate"
    }
  }