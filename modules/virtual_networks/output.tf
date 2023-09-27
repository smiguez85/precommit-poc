output "virtual_network_id" {
  description = "Id of the storage account created"
  value       = azurerm_virtual_network.poc_vnet.id
}
output "virtual_network_name" {
  description = "Name of the storage account created"
  value       = azurerm_virtual_network.poc_vnet.name
}
output "address_space" {
  description = "List of CIDR address spaces created"
  value = azurerm_virtual_network.poc_vnet.address_space
}
output "subnet" {
  description = "Set of subnets created"
  value = azurerm_virtual_network.poc_vnet.subnet
}
output "subnet_id" {
  description = "List of subnets Id created"
  value = azurerm_virtual_network.poc_vnet.subnet[*].id
}
