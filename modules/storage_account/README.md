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
	 name  =
	 project_name  =
	 public_network_access_enabled  =
	 resource_group_name  =
}
```
## Resources

| Name | Type |
|------|------|
| [azurerm_storage_account.storage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | Assign the environment name to its corresponding tag | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The Azure Region to use | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the Storage Account | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Assign the project name to its corresponding tag | `string` | n/a | yes |
| <a name="input_public_network_access_enabled"></a> [public\_network\_access\_enabled](#input\_public\_network\_access\_enabled) | Will the storage account have public access? | `bool` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group | `string` | n/a | yes |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Id of the storage account created |
| <a name="output_name"></a> [name](#output\_name) | Name of the storage account created |
| <a name="output_primary_access_key"></a> [primary\_access\_key](#output\_primary\_access\_key) | Primary Access Key of the storage account created |
| <a name="output_primary_connection_string"></a> [primary\_connection\_string](#output\_primary\_connection\_string) | Primary connection string of the storage account created |
<!-- END_AUTOMATED_TF_DOCS_BLOCK -->