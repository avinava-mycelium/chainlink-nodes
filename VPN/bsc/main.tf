module "chainlinknode" {
  source  = "avinava-mycelium/chainlinknode/gcp"
  version = "1.0.8"
  # insert the 4 required variables here
  project_id = var.project_id
  machine_type = var.machine_type
  node_name = var.node_name
  node_type = var.node_type
  boot_disk_size = var.boot_disk_size
  network_tag = var.network_tag
  subnetwork = var.subnetwork
}