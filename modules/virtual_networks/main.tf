provider "azurerm" {
  features {}
}

resource "azurerm_virtual_network" "poc_vnet" {
  name                = var.virtual_network_name
  address_space       = [var.network_cidr]
  location            = var.location
  resource_group_name = var.resource_group_name

  subnet {
    name           = var.virtual_subnetwork_name
    address_prefix = cidrsubnet(var.network_cidr, 1, 0)
  }
  #TAGS
  tags = local.tags
}
