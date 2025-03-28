terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  required_version = ">= 1.0.0"

  backend "azurerm" {
    resource_group_name  = "crol0005-githubactions-rg"
    storage_account_name = "crol0005githubactions"
    container_name       = "tfstate"
    key                  = "prod.app.tfstate"
  }
}

provider "azurerm" {
  features {}
} 