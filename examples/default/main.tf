locals {
  name                = "ostfmodulessatest"
  resource_group_name = "testRgName"
}

resource "azurerm_resource_group" "group" {
  name     = local.resource_group_name
  location = "North Europe"
}

module "storage_account" {
  source = "../../"

  name                = local.name
  resource_group_name = local.resource_group_name

  depends_on = [azurerm_resource_group.group]
}
