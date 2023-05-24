terraform {
    backend "gcs" {
      bucket  = "myc-node"
      prefix  = "cl/cloud-schedulers/VPN/eth-vpn.tfstate"
    }
  }