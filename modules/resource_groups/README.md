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
	 project_name  =
	 resource_group_name  =
}
```
## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.resource_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | Assign the environment name to its corresponding tag | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The Azure Region to use | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Assign the project name to its corresponding tag | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group | `string` | n/a | yes |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vnet_resource_group_name"></a> [vnet\_resource\_group\_name](#output\_vnet\_resource\_group\_name) | Name of the resource group created |
<!-- END_AUTOMATED_TF_DOCS_BLOCK -->