module "chainlinknode" {
  source  = "avinava-mycelium/chainlinknode/gcp"
  version = "1.0.1"
  # insert the 6 required variables here
  # project_id = var.project_id
  # region = var.region
  # zone = var.zone
  # machine_type = var.machine_type
  # node_name = var.node_name
  # node_type = var.node_type

  // setting for-each
  for_each = {
    #xdai = "fm"
    heco = "fm"
  }
  project_id = var.project_id
  region = var.region
  zone = var.zone
  machine_type = var.machine_type
  node_name = each.key
  node_type = each.value
}