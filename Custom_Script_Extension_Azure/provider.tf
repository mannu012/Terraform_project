terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.10.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "Enter subscription id"
  tenant_id = "Enter Tenant id"
  client_id = "Enter Client id"
  client_secret = "Enter Client Secret"
  features {}  
}