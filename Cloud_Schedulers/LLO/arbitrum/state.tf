terraform {
  backend "gcs" {
    bucket = "myc-node"
    prefix = "cl/cloud-schedulers/LLO/arbitrum-ocr-llo.tfstate"
  }
}