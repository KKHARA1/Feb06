terraform {
backend "azurerm" {
    storage_account_name = "kkstgnewdev"                                 
    container_name       = "tfstate"                                  
    key                  = "prod.terraform.tfstate"                   
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.43.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "b4461466-1e6b-4be2-bb70-1e96a72a41c8"

}

resource "azurerm_resource_group" "kkh" {
  name     = "delete"
  location = "East Europe"
}

resource "azurerm_resource_group" "ngh" {
  name     = "newkkrg2"
  location = "West Europe"
}
