provider "azurerm" {
  features {}  # Ensure this block is correctly closed
}

# Data block to reference the existing storage account
data "azurerm_storage_account" "existing" {
  name                = "ganeshterraformdeployed"
  resource_group_name = "Gan_Resource_Group"
}

# Define storage containers using the existing storage account
resource "azurerm_storage_container" "container1" {
  name                  = "mycontainer1"
  storage_account_name  = data.azurerm_storage_account.existing.name
  container_access_type = "private"
}

resource "azurerm_storage_container" "container2" {
  name                  = "mycontainer2"
  storage_account_name  = data.azurerm_storage_account.existing.name
  container_access_type = "private"
}

resource "azurerm_storage_container" "container2" {
  name                  = "mycontainer3"
  storage_account_name  = data.azurerm_storage_account.existing.name
  container_access_type = "private"
}


