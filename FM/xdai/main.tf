module "chainlinknode" {
  source  = "avinava-mycelium/chainlinknode/gcp"
  version = "1.0.4"
  # insert the 6 required variables here
  project_id = var.project_id
  region = var.region
  zone = var.zone
  machine_type = var.machine_type
  node_name = var.node_name
  node_type = var.node_type
}