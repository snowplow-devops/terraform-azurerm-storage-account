output "id" {
  value       = azurerm_storage_account.storage_account.id
  description = "Storage account ID"
}

output "name" {
  value       = azurerm_storage_account.storage_account.name
  description = "Storage account name"
}

output "primary_access_key" {
  value       = azurerm_storage_account.storage_account.primary_access_key
  description = "Primary access key for the account"
  sensitive   = true
}
