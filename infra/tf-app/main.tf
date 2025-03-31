# Resource Group for the application
resource "azurerm_resource_group" "rg" {
  name     = "crol0005-a12-rg"
  location = "canadacentral"
}

# Static Web App
resource "azurerm_static_site" "web" {
  name                = "crol0005-static-webapp"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "centralus" # Azure Static Web Apps is only available in certain regions
}
# Virtual Network
resource "azurerm_virtual_network" "vnet" {
  name                = "crol0005-vnet"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  address_space       = ["10.0.0.0/16"]
  
  tags = {
    environment = "production"
    purpose     = "demonstration"
  }
}

# Subnet within the Virtual Network
resource "azurerm_subnet" "subnet" {
  name                 = "crol0005-subnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}
