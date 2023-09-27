provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name_fix_me
  location = var.location

  tags = local.tags
}
