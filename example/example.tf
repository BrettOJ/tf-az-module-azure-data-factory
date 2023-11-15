resource "azurerm_resource_group" "data_factory_rg" {
  name     = var.resource_group_name
  location = var.location
}

module "azurerm_data_factory" {
  source = "../"
  data_factory_name   = var.data_factory_name
  location            = var.location
  resource_group_name = azurerm_resource_group.data_factory_rg.name
}


module "azure_blob_storage_link" {
  source = "./modules/azure_blob_storage_link"

  data_factory_blob_sas_uri_link = {
    "first_blob_service" = {
      name              = "firstBlobService"
      data_factory_id   = azurerm_data_factory.example.id
      sas_uri           = "https://example.blob.core.windows.net/?sas-token"
      key_vault_sas_token = [
        {
          linked_service_name = "exampleKeyVaultLinkedService"
          secret_name         = "exampleSasTokenSecret"
        }
      ]
    }
  }
}

output "blob_storage_linked_service_ids" {
  value = module.azure_blob_storage_link.blob_storage_linked_service_ids
}
