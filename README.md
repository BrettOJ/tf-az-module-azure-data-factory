Manages an Azure Data Factory (Version 2).

## [Example Usage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#example-usage)

```
resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_data_factory" "example" {
  name                = "example"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}
```

## [Argument Reference](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#argument-reference)

The following arguments are supported:

-   [`name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#name) - (Required) Specifies the name of the Data Factory. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
    
-   [`resource_group_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#resource_group_name) - (Required) The name of the resource group in which to create the Data Factory. Changing this forces a new resource to be created.
    
-   [`location`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#location) - (Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
    
-   [`github_configuration`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#github_configuration) - (Optional) A `github_configuration` block as defined below.
    
-   [`global_parameter`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#global_parameter) - (Optional) A list of `global_parameter` blocks as defined above.
    
-   [`identity`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#identity) - (Optional) An `identity` block as defined below.
    
-   [`vsts_configuration`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#vsts_configuration) - (Optional) A `vsts_configuration` block as defined below.
    
-   [`managed_virtual_network_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#managed_virtual_network_enabled) - (Optional) Is Managed Virtual Network enabled?
    
-   [`public_network_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#public_network_enabled) - (Optional) Is the Data Factory visible to the public network? Defaults to `true`.
    
-   [`customer_managed_key_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#customer_managed_key_id) - (Optional) Specifies the Azure Key Vault Key ID to be used as the Customer Managed Key (CMK) for double encryption. Required with user assigned identity.
    
-   [`customer_managed_key_identity_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#customer_managed_key_identity_id) - (Optional) Specifies the ID of the user assigned identity associated with the Customer Managed Key. Must be supplied if `customer_managed_key_id` is set.
    
-   [`purview_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#purview_id) - (Optional) Specifies the ID of the purview account resource associated with the Data Factory.
    
-   [`tags`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#tags) - (Optional) A mapping of tags to assign to the resource.
    

___

A `github_configuration` block supports the following:

-   [`account_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#account_name) - (Required) Specifies the GitHub account name.
    
-   [`branch_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#branch_name) - (Required) Specifies the branch of the repository to get code from.
    
-   [`git_url`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#git_url) - (Required) Specifies the GitHub Enterprise host name. For example: [https://github.mydomain.com](https://github.mydomain.com/). Use [https://github.com](https://github.com/) for open source repositories.
    
-   [`repository_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#repository_name) - (Required) Specifies the name of the git repository.
    
-   [`root_folder`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#root_folder) - (Required) Specifies the root folder within the repository. Set to `/` for the top level.
    

___

A `global_parameter` block supports the following:

-   [`name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#name) - (Required) Specifies the global parameter name.
    
-   [`type`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#type) - (Required) Specifies the global parameter type. Possible Values are `Array`, `Bool`, `Float`, `Int`, `Object` or `String`.
    
-   [`value`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#value) - (Required) Specifies the global parameter value.
    

___

An `identity` block supports the following:

-   [`type`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#type) - (Required) Specifies the type of Managed Service Identity that should be configured on this Data Factory. Possible values are `SystemAssigned`, `UserAssigned`, `SystemAssigned, UserAssigned` (to enable both).
    
-   [`identity_ids`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#identity_ids) - (Optional) Specifies a list of User Assigned Managed Identity IDs to be assigned to this Data Factory.
    

___

A `vsts_configuration` block supports the following:

-   [`account_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#account_name) - (Required) Specifies the VSTS account name.
    
-   [`branch_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#branch_name) - (Required) Specifies the branch of the repository to get code from.
    
-   [`project_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#project_name) - (Required) Specifies the name of the VSTS project.
    
-   [`repository_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#repository_name) - (Required) Specifies the name of the git repository.
    
-   [`root_folder`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#root_folder) - (Required) Specifies the root folder within the repository. Set to `/` for the top level.
    
-   [`tenant_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#tenant_id) - (Required) Specifies the Tenant ID associated with the VSTS account.
    

## [Attributes Reference](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#attributes-reference)

In addition to the Arguments listed above - the following Attributes are exported:

-   [`id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#id) - The ID of the Data Factory.
    
-   [`identity`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#identity) - An `identity` block as defined below.
    

___

An `identity` block exports the following:

-   [`principal_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#principal_id) - The Principal ID associated with this Managed Service Identity.
    
-   [`tenant_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#tenant_id) - The Tenant ID associated with this Managed Service Identity.
    

## [Timeouts](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#timeouts)

The `timeouts` block allows you to specify [timeouts](https://www.terraform.io/language/resources/syntax#operation-timeouts) for certain actions:

-   [`create`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#create) - (Defaults to 30 minutes) Used when creating the Data Factory.
-   [`update`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#update) - (Defaults to 30 minutes) Used when updating the Data Factory.
-   [`read`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#read) - (Defaults to 5 minutes) Used when retrieving the Data Factory.
-   [`delete`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#delete) - (Defaults to 30 minutes) Used when deleting the Data Factory.

## [Import](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#import)

Data Factory can be imported using the `resource id`, e.g.

```
terraform import azurerm_data_factory.example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example
```