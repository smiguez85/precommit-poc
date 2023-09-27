/******************************
TERRAGRUNT CONFIGURATIONS
******************************/

/******************************
Include the root terragrunt.hcl configurations gathering together
the needed variables and backend configurations
******************************/
include "root" {
  path = find_in_parent_folders()
}

locals {
  # Expose the base source path
  base_source       = "${dirname(find_in_parent_folders())}/..//modules"
  subscription_vars = read_terragrunt_config(find_in_parent_folders("subscription.hcl"))
  region_vars       = read_terragrunt_config(find_in_parent_folders("region.hcl"))
  environment_vars  = read_terragrunt_config(find_in_parent_folders("env.hcl"))

  location     = local.region_vars.locals.location
  project_name = local.environment_vars.locals.project_name
  environment  = local.environment_vars.locals.environment
}

terraform {
  source = "${local.base_source}/resource_groups"
}

inputs = {
  location                 = local.location
  resource_group_name = "rg-precommit-poc"
  # TAGS
  project_name = local.project_name
  environment  = local.environment
}