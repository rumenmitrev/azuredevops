resource "azurerm_virtual_network" "example" {
  name                = "example-vnet"
  resource_group_name = azurerm_resource_group.rumen-resource-group.name
  location            = var.location
  address_space       = ["172.16.0.0/16"]
}

resource "azurerm_subnet" "example" {
  name                 = "example-subnet"
  resource_group_name  = azurerm_resource_group.rumen-resource-group.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["172.16.1.0/24"]
}