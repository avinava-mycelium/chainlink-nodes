terraform {
  backend "gcs" {
    bucket = "myc-node"
    prefix = "cl/cloud-schedulers/OCR/eth-ocr.tfstate"
  }
}