# Chainlink Nodes

This repository contains IAC code to setup chainlink nodes and relevant resources

## Usage

See the [github-module](https://github.com/avinava-mycelium/terraform-gcp-chainlinknode) for the source terraform repository

Check Terraform registry [chainlinknode](https://registry.terraform.io/modules/avinava-mycelium/chainlinknode/gcp/1.0.1) for Provision Instructions.

## Testing


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| access\_config | Access configurations, i.e. IPs via which the VM instance can be accessed via the Internet. | <pre>list(object({<br>    nat_ip       = string<br>    network_tier = string<br>  }))</pre> | `[]` | no |
| add\_hostname\_suffix | Adds a suffix to the hostname | `bool` | `true` | no |
| hostname | Hostname of instances | `string` | `""` | no |
| instance\_template | Instance template self\_link used to create compute instances | `any` | n/a | yes |
| network | Network to deploy to. Only one of network or subnetwork should be specified. | `string` | `""` | no |
| num\_instances | Number of instances to create. This value is ignored if static\_ips is provided. | `string` | `"1"` | no |
| region | Region where the instances should be created. | `string` | `null` | no |
| static\_ips | List of static IPs for VM instances | `list(string)` | `[]` | no |
| subnetwork | Subnet to deploy to. Only one of network or subnetwork should be specified. | `string` | `""` | no |
| subnetwork\_project | The project that subnetwork belongs to | `string` | `""` | no |
| zone | Zone where the instances should be created. If not specified, instances will be spread across available zones in the region. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| available\_zones | List of available zones in region |
| instances\_details | List of all details for compute instances |
| instances\_self\_links | List of self-links for compute instances |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
