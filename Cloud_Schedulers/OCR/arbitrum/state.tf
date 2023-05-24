terraform {
  backend "gcs" {
    bucket = "myc-node"
    prefix = "cl/cloud-schedulers/OCR/arbitrum-ocr.tfstate"
  }
}