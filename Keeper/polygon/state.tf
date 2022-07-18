terraform {
    backend "gcs" {
      bucket  = "myc-node"
      prefix  = "cl/polygon-keeper.tfstate"
    }
  }