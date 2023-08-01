terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.10.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "Enter value here"
  tenant_id = "Enter value here"
  client_id = "Enter value here"
  client_secret = "Enter value here"
  features {}  
}
