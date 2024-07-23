provider "azurerm" {
  features {}
}

resource "azurerm_storage_account" "gan_storage" {
  name                     = "ganeshterraformdeployed"
  resource_group_name      = "Gan_Resource_Group"
  location                 = "East US"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "terraformcontainer1" {
  name                  = "terraformcontainer1"
  storage_account_name  = azurerm_storage_account.gan_storage.name
  container_access_type = "private"
}

resource "azurerm_storage_container" "terraformcontainer2" {
  name                  = "terraformcontainer2"
  storage_account_name  = azurerm_storage_account.gan_storage.name
  container_access_type = "private"
}
