# Chainlink Nodes

This repository contains IAC code to setup chainlink nodes and relevant resources

## Usage

See the [github-module](https://github.com/avinava-mycelium/terraform-gcp-chainlinknode) for the source terraform repository

Check Terraform registry [chainlinknode](https://registry.terraform.io/modules/avinava-mycelium/chainlinknode/gcp/1.0.1) for Provision Instructions.


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| region | Region where the instances should be created. | `string` | `` | yes |
| zone | Zone where the instances should be created. If not specified, instances will be spread across available zones in the region. | `string` | `` | yes |
| machine\_type | Machine configuration for CPU and Memory. | `string` | `` | yes |
| node\_name | Name of CL node. | `string` | `` | yes |
| node\_type | Type of CL node. | `string` | `` | yes |
| project\_id | Project ID in GCP for the code to be deployed. | `string` | `` | yes |

## Outputs

| Name | Description |
|------|-------------|
| disk\_names | The boot disk name of the node |
| instance\_name | The name of the VM instance holding the node |
| disk\_size | The disk size allocated to the node |
| gcs\_startup\_script | The private bucket location for the startup script of the node |
| external\_ip\_addresses | The public IP address of the node |
| internal\_ip\_addresses | The internal static IP address of the node |
| internal\_ip\_names | The internal static IP names of the node |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
