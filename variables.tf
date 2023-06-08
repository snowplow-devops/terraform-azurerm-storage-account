variable "name" {
  description = "Name of the storage account"
  type        = string
}

variable "resource_group_name" {
  description = "Name of resource group to deploy the account into"
  type        = string
}

variable "sku" {
  description = "SKU Tier for storage account"
  type        = string
  default     = "Standard"
}

variable "replication_type" {
  description = "Replication type for storage account"
  type        = string
  default     = "ZRS"
}

variable "kind" {
  description = "Storage account Kind"
  type        = string
  default     = "StorageV2"
}

variable "tags" {
  description = "The tags to append to this resource"
  default     = {}
  type        = map(string)
}
