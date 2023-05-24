terraform {
  backend "gcs" {
    bucket = "myc-node"
    prefix = "cl/cloud-schedulers/FM/eth-fm.tfstate"
  }
}