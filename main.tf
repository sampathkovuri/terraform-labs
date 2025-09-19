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
    time = {
      source  = "hashicorp/time"
      version = "0.13.1"
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
  resource_providers_to_register  = var.global_provider_list
}