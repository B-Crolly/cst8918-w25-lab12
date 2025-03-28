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