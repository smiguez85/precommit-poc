# Set common variables for the environment
locals {
  project_name         = get_env("TF_VAR_PROJECT_NAME")
  environment          = "poc"
  resource_group_name  = get_env("TF_VAR_TG_RG")
  storage_account_name = get_env("TF_VAR_TG_SA")
  container_name       = get_env("TF_VAR_TG_SC")
}
