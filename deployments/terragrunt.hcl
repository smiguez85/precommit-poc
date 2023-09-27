/******************************
TERRAGRUNT CONFIGURATION
******************************/

locals {
  # Load account, region and environment variables
  subscription_vars = read_terragrunt_config(find_in_parent_folders("subscription.hcl"))
  region_vars       = read_terragrunt_config(find_in_parent_folders("region.hcl"))
  environment_vars  = read_terragrunt_config(find_in_parent_folders("env.hcl"))

  # Extract the variables we need with the backend configuration
  location             = local.region_vars.locals.location
  environment          = local.environment_vars.locals.environment
  resource_group_name  = local.environment_vars.locals.resource_group_name
  storage_account_name = local.environment_vars.locals.storage_account_name
  container_name       = local.environment_vars.locals.container_name
  subscription_id      = local.subscription_vars.locals.subscription_id
  tenant_id            = local.subscription_vars.locals.tenant_id
}

/******************************
Configure the Terragrunt remote state to utilize a S3 bucket and state lock information in a DynamoDB table.
And encrypt the state data.
******************************/
remote_state {
  backend = "azurerm"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite"
  }
  config = {
    tenant_id            = "${local.tenant_id}"
    subscription_id      = "${local.subscription_id}"
    key                  = "${path_relative_to_include()}/terraform.tfstate"
    resource_group_name  = local.resource_group_name
    storage_account_name = local.storage_account_name
    container_name       = local.container_name
  }
}

/******************************
Combine all account, region and environment variables as Terragrunt input parameters.
The input parameters can be used in Terraform configurations as Terraform variables.
******************************/
inputs = merge(
  local.subscription_vars.locals,
  local.region_vars.locals,
  local.environment_vars.locals
)
