terraform {
  required_version = ">= 1.3.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.71, < 5.0.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.5.0, < 4.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tfstate-demo-rg"
    storage_account_name = "tfstatesademo2324234"
    container_name       = "tfstate"
    key                  = "tfdemo.env0.tfstate"
  }
}
provider "azurerm" {
  features {}
  subscription_id = "3d9fc718-6ac2-44f8-8a3c-6509f5bd184a"
}
resource "azurerm_resource_group" "rumen-resource-group" {
  location = var.location
  name     = "rumen-resource-group"
  # lifecycle {
  #   prevent_destroy = true
  # }
  tags = local.common_tags
}