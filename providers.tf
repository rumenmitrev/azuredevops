terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.37.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}
terraform {
  backend "local" {
  }
}
resource "azurerm_resource_group" "rumen-resource-group" {
  location = var.location
  name     = "rumen-resource-group"
  # lifecycle {
  #   prevent_destroy = true
  # }
  tags = local.common_tags
}