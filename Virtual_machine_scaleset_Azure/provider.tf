terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.10.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "Enter value"
  tenant_id = "Enter value"
  client_id = "Enter value"
  client_secret = "Enter value"
  features {}  
}
