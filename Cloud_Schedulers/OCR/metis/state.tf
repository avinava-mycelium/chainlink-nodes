terraform {
    backend "gcs" {
      bucket  = "myc-node"
      prefix  = "cl/cloud-schedulers/FM/metis-ocr.tfstate"
    }
  }