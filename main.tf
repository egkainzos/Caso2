# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.1"
    }
  }
}

# crea un service principal y rellena los siguientes datos para autenticar
#provider "azurerm" {
#  features {}
#  subscription_id = "bca86a46-059e-45f5-ba6d-4a75bf90450d"
#  client_id       = "eba0a797-d990-40e0-8855-9fc4d6928495"
#  client_secret   = "ve4b~USecYNmis29L_GxODhc1Cno8Z34_2"
#  tenant_id       = "899789dc-202f-44b4-8472-a6d40f9eb440"
#}

# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group

resource "azurerm_resource_group" "rg" {
    name     =  "kubernetes_rg"
    location = var.location

    tags = {
        environment = "CP2"
    }

}

# Storage account
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account

resource "azurerm_storage_account" "stAccount" {
    name                     = "staccountcp2egkainzos" 
    resource_group_name      = azurerm_resource_group.rg.name
    location                 = azurerm_resource_group.rg.location
    account_tier             = "Standard"
    account_replication_type = "LRS"

    tags = {
        environment = "CP2"
    }

}