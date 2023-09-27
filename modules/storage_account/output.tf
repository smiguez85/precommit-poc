output "id" {
  description = "Id of the storage account created"
  value       = azurerm_storage_account.storage.id
}
output "name" {
  description = "Name of the storage account created"
  value       = azurerm_storage_account.storage.name
}
output "primary_access_key" {
  description = "Primary Access Key of the storage account created"
  value       = azurerm_storage_account.storage.primary_access_key
  sensitive   = true
}
output "primary_connection_string" {
  description = "Primary connection string of the storage account created"
  value       = azurerm_storage_account.storage.primary_connection_string
  sensitive   = true
}
