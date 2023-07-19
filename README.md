[![Release][release-image]][release] [![CI][ci-image]][ci] [![License][license-image]][license] [![Registry][registry-image]][registry]

# terraform-azurerm-storage-account

A Terraform module for a storage account with zone redundancy.

## Usage

```hcl
module "storage_account" {
  source "snowplow-devops/storage-account/azurerm"

  name                = local.name
  resource_group_name = local.resource_group_name

  depends_on = [azurerm_resource_group.group]
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.58.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.58.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_storage_account.storage_account](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Name of the storage account | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Name of resource group to deploy the account into | `string` | n/a | yes |
| <a name="input_is_hns_enabled"></a> [is\_hns\_enabled](#input\_is\_hns\_enabled) | Required to enable Azure Data Lake Storage Gen 2 | `bool` | `true` | no |
| <a name="input_kind"></a> [kind](#input\_kind) | Storage account Kind | `string` | `"StorageV2"` | no |
| <a name="input_replication_type"></a> [replication\_type](#input\_replication\_type) | Replication type for storage account | `string` | `"ZRS"` | no |
| <a name="input_sku"></a> [sku](#input\_sku) | SKU Tier for storage account | `string` | `"Standard"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | The tags to append to this resource | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Storage account ID |
| <a name="output_name"></a> [name](#output\_name) | Storage account name |
| <a name="output_primary_access_key"></a> [primary\_access\_key](#output\_primary\_access\_key) | Primary access key for the account |

# Copyright and license

The Terraform Azurerm Storage Account project is Copyright 2023-present Snowplow Analytics Ltd.

Licensed under the [Snowplow Community License](https://docs.snowplow.io/community-license-1.0). _(If you are uncertain how it applies to your use case, check our answers to [frequently asked questions](https://docs.snowplow.io/docs/contributing/community-license-faq/).)_

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

[release]: https://github.com/snowplow-devops/terraform-azurerm-storage-account/releases/latest
[release-image]: https://img.shields.io/github/v/release/snowplow-devops/terraform-azurerm-storage-account

[ci]: https://github.com/snowplow-devops/terraform-azurerm-storage-account/actions?query=workflow%3Aci
[ci-image]: https://github.com/snowplow-devops/terraform-azurerm-storage-account/workflows/ci/badge.svg

[license]: https://docs.snowplow.io/docs/contributing/community-license-faq/
[license-image]: https://img.shields.io/badge/license-Snowplow--Community-blue.svg?style=flat

[registry]: https://registry.terraform.io/modules/snowplow-devops/storage-account/azurerm/latest
[registry-image]: https://img.shields.io/static/v1?label=Terraform&message=Registry&color=7B42BC&logo=terraform

