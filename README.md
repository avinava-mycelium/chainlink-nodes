# Chainlink Nodes

This repository contains IAC code to setup chainlink nodes and relevant resources in GCP

## Source

See the [github-module](https://github.com/avinava-mycelium/terraform-gcp-chainlinknode) for the source terraform repository from where the module is inherited.

Check Terraform registry [chainlinknode](https://registry.terraform.io/modules/avinava-mycelium/chainlinknode/gcp) for Provision Instructions.

# Usage

Clone this git repo
Add **service_account.json** file in your **root** folder with your cloud provider and project details.
For help check [this](https://cloud.google.com/iam/docs/creating-managing-service-account-keys)

Install [terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)

## To add a node

- Select what **node_type** ( FM / OCR / Keeper ), you want to add
- Duplicate any of the given folders inside it. ( e.g.bsc / eth )
- Edit **main.tf** file. 
- Make sure you have the **latest version** of the [registry](https://registry.terraform.io/modules/avinava-mycelium/chainlinknode/gcp).
- Go to **state.tf** file. Edit prefix  = "cl/<node_name>-<node_type>.tfstate". This will store the state in GCP
- Again in **terraform.tfvars** file , edit these two values ( you can configure other values as wqell if required )
```sh
node_name = <node_name>
node_type = <node-type>
``` 
> Create a bash file in this format "<node_name>-<node_type>-startup.sh".

> Add your application code here. For reference check files [here](https://console.cloud.google.com/storage/browser/myc-node/cl/cl-metadata-script).

> Upload the file in the above bucket.Check the **gsutil URI**. It will read something like this : **gs://myc-node/cl/cl-metadata-script/xdai-fm-startup.sh**

- Keep **outputs.tf** , **provider.tf** , **variables.tf** files as is.
- Thats it!

Initialise your terraform in the respective folder.
```sh
terraform init
```
Run to check the execution flow.
```sh
terraform plan
``` 

Once satisfied , apply to start the execution
 ```sh 
terraform apply --auto-approve
```

## To destroy a node

- Run to check what all resources will be destroyed.
```sh 
terraform destroy 
``` 
- Once happy you can enter **yes** and the node with its associated resources will be deleted

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
