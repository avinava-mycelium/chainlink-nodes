output "instance_name" {
  description = "The name of the VM instance holding the node"
  value = module.chainlinknode.instance_name
}

output "disk_name" {
  description = "The boot disk name of the node"
  value = module.chainlinknode.disk_name
}

output "disk_size" {
  description = "The boot disk size of the node"
  value = module.chainlinknode.disk_size
}

output "gcs_startup_script" {
  description = "The private bucket location for the startup script of the node"
  value = module.chainlinknode.gcs_startup_script
}

output "external_ip_addresses" {
  description = "The public IP address of the node"
  value = module.chainlinknode.external_ip_addresses
}

output "external_ip_names" {
  description = "The public static IP names of the node"
  value = module.chainlinknode.external_ip_names
}

output "internal_ip_addresses" {
  description = "The internal static IP address of the node"
  value = module.chainlinknode.internal_ip_addresses
}

output "internal_ip_names" {
  description = "The internal static IP names of the node"
  value = module.chainlinknode.internal_ip_names
}