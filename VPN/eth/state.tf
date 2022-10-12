terraform {
    backend "gcs" {
      bucket  = "myc-node"
      prefix  = "cl/eth-vpn.tfstate"
    }
  }