
variable "data_factory_name" {
  description = "Specifies the name of the Data Factory. Changing this forces a new resource to be created. Must be globally unique. See the Microsoft documentation for all restrictions."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Data Factory. Changing this forces a new resource to be created."
  type        = string
}

variable "location" {
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string
}

variable "github_configuration" {
  description = "A github_configuration block as defined below."
  type = object({
    account_name    = string
    branch_name     = string
    git_url         = string
    repository_name = string
    root_folder     = string
  })
  default = null
}

variable "global_parameter" {
  description = "A list of global_parameter blocks as defined above."
  type = list(object({
    name  = string
    type  = string
    value = string
  }))
  default = null
}

variable "identity" {
  description = "An identity block as defined below."
  type = object({
    type         = string
    identity_ids = list(string)
  })
  default = null
}

variable "vsts_configuration" {
  description = "A vsts_configuration block as defined below."
  type = object({
    account_name    = string
    branch_name     = string
    project_name    = string
    repository_name = string
    root_folder     = string
    tenant_id       = string
  })
  default = null
}

variable "managed_virtual_network_enabled" {
  description = "Is Managed Virtual Network enabled?"
  type        = bool
  default     = false
}

variable "public_network_enabled" {
  description = "Is the Data Factory visible to the public network? Defaults to true."
  type        = bool
  default     = true
}

variable "customer_managed_key_id" {
  description = "Specifies the Azure Key Vault Key ID to be used as the Customer Managed Key (CMK) for double encryption. Required with user assigned identity."
  type        = string
  default     = null
}

variable "customer_managed_key_identity_id" {
  description = "Specifies the ID of the user assigned identity associated with the Customer Managed Key. Must be supplied if customer_managed_key_id is set."
  type        = string
  default     = null
}

variable "purview_id" {
  description = "Specifies the ID of the purview account resource associated with the Data Factory."
  type        = string
  default     = null
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {BUILT_BY = "Terraform"}
}

