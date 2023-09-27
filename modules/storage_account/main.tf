provider "azurerm" {
  features {}
}

# Create Azure Storage Account
resource "azurerm_storage_account" "storage" {
  #checkov:skip=CKV2_AZURE_1:Using Azure key for encryption
  #checkov:skip=CKV2_AZURE_18:Using Azure key for encryption
  #checkov:skip=CKV_AZURE_33:Logging is not needed
  #checkov:skip=CKV2_AZURE_33
  name                            = var.name
  resource_group_name             = var.resource_group_name
  location                        = var.location
  account_tier                    = "Standard"
  account_replication_type        = "LRS"
  min_tls_version                 = "TLS1_2"
  enable_https_traffic_only       = true
  public_network_access_enabled   = var.public_network_access_enabled
  allow_nested_items_to_be_public = false

  blob_properties {
    last_access_time_enabled = true
    delete_retention_policy {
      days = 5
    }
  }

  #TAGS
  tags = local.tags
}
