terraform {
  backend "azurerm" {}
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.45.0"
    }
    azapi = {
      source  = "Azure/azapi"
      version = "2.6.1"
    }
  }
}

provider "azapi" {
  skip_provider_registration = true
  enable_preflight           = true
  disable_default_output     = true
}

provider "azurerm" {
  features {}
  resource_provider_registrations = "none"
  subscription_id                 = var.azure_subscription_id
}

resource "azurerm_subscription" "this" {
    
}