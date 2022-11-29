terraform {
    backend "gcs" {
      bucket  = "myc-node"
      prefix  = "cl/klaytn-ocr.tfstate"
    }
  }