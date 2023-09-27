<!-- BEGIN_AUTOMATED_TF_DOCS_BLOCK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.0.0 |
## Usage
Basic usage of this module is as follows:
```hcl
module "example" {
	 source  = "<module-path>"

	 # Required variables
	 environment  =
	 location  =
	 network_cidr  =
	 project_name  =
	 resource_group_name  =
	 virtual_network_name  =
	 virtual_subnetwork_name  =
}
```
## Resources

| Name | Type |
|------|------|
| [azurerm_virtual_network.poc_vnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | Assign the environment name to its corresponding tag | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The Azure Region to use | `string` | n/a | yes |
| <a name="input_network_cidr"></a> [network\_cidr](#input\_network\_cidr) | CIDR of the virtual network | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Assign the project name to its corresponding tag | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the vnet resource group | `string` | n/a | yes |
| <a name="input_virtual_network_name"></a> [virtual\_network\_name](#input\_virtual\_network\_name) | Name of the virtual network | `string` | n/a | yes |
| <a name="input_virtual_subnetwork_name"></a> [virtual\_subnetwork\_name](#input\_virtual\_subnetwork\_name) | Name of the subnet | `string` | n/a | yes |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_address_space"></a> [address\_space](#output\_address\_space) | List of CIDR address spaces created |
| <a name="output_subnet"></a> [subnet](#output\_subnet) | Set of subnets created |
| <a name="output_subnet_id"></a> [subnet\_id](#output\_subnet\_id) | List of subnets Id created |
| <a name="output_virtual_network_id"></a> [virtual\_network\_id](#output\_virtual\_network\_id) | Id of the storage account created |
| <a name="output_virtual_network_name"></a> [virtual\_network\_name](#output\_virtual\_network\_name) | Name of the storage account created |
<!-- END_AUTOMATED_TF_DOCS_BLOCK -->