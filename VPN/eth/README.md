<!-- BEGIN_TF_DOCS -->
## Requirements

This repository contains IAC code to setup ETH VPN CL node and its relevant resources in GCP

## Providers

GCP providers
Terraform 0.13.0

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_chainlinknode"></a> [chainlinknode](#module\_chainlinknode) | avinava-mycelium/chainlinknode/gcp | 1.0.8 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_boot_disk_size"></a> [boot\_disk\_size](#input\_boot\_disk\_size) | n/a | `any` | n/a | yes |
| <a name="input_machine_type"></a> [machine\_type](#input\_machine\_type) | n/a | `any` | n/a | yes |
| <a name="input_network_tag"></a> [network\_tag](#input\_network\_tag) | n/a | `any` | n/a | yes |
| <a name="input_node_name"></a> [node\_name](#input\_node\_name) | n/a | `any` | n/a | yes |
| <a name="input_node_type"></a> [node\_type](#input\_node\_type) | n/a | `any` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_disk_name"></a> [disk\_name](#output\_disk\_name) | The boot disk name of the node |
| <a name="output_disk_size"></a> [disk\_size](#output\_disk\_size) | The boot disk size of the node |
| <a name="output_external_ip_addresses"></a> [external\_ip\_addresses](#output\_external\_ip\_addresses) | The public IP address of the node |
| <a name="output_external_ip_names"></a> [external\_ip\_names](#output\_external\_ip\_names) | The public static IP names of the node |
| <a name="output_gcs_startup_script"></a> [gcs\_startup\_script](#output\_gcs\_startup\_script) | The private bucket location for the startup script of the node |
| <a name="output_instance_name"></a> [instance\_name](#output\_instance\_name) | The name of the VM instance holding the node |
| <a name="output_internal_ip_addresses"></a> [internal\_ip\_addresses](#output\_internal\_ip\_addresses) | The internal static IP address of the node |
| <a name="output_internal_ip_names"></a> [internal\_ip\_names](#output\_internal\_ip\_names) | The internal static IP names of the node |
<!-- END_TF_DOCS -->