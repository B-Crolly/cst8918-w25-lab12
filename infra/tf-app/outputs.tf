output "static_web_app_url" {
  value       = azurerm_static_web_app.web.default_host_name
  description = "The URL of the static web app"
}

output "resource_group_name" {
  value       = azurerm_resource_group.rg.name
  description = "The name of the resource group"
} 