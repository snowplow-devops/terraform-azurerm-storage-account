data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

resource "azurerm_storage_account" "storage_account" {
  name                      = var.name
  resource_group_name       = var.resource_group_name
  location                  = data.azurerm_resource_group.rg.location
  account_tier              = var.sku
  account_replication_type  = var.replication_type
  account_kind              = var.kind
  enable_https_traffic_only = true
  min_tls_version           = "TLS1_2"

  tags = var.tags
}
