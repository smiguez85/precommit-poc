output "vnet_resource_group_name" {
  description = "Name of the resource group created"
  value      = var.resource_group_name
  depends_on = [azurerm_resource_group.resource_group]
}
