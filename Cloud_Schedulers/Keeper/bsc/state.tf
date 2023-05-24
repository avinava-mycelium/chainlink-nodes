terraform {
  backend "gcs" {
    bucket = "myc-node"
    prefix = "cl/cloud-schedulers/Keeper/bsc-kpr.tfstate"
  }
}