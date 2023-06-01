terraform {
  backend "gcs" {
    bucket = "myc-node"
    prefix = "cl/cloud-schedulers/CCIP/ccip-ocr2-1.tfstate"
  }
}