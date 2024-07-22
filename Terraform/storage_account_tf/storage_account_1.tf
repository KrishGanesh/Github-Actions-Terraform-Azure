provider "azurerm" {
  features {}
}

# Reference the existing resource group
data "azurerm_resource_group" "existing" {
  name = "Gan_Resource_Group"  # Name of the existing resource group
}

# Create a new storage account in the existing resource group
resource "azurerm_storage_account" "existing_rg_storage" {
  name                     = "ganeshterraformdeployed"
  resource_group_name      = data.azurerm_resource_group.existing.name
  location                 = data.azurerm_resource_group.existing.location  # Use the location of the existing resource group
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
