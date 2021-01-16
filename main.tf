# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network
resource "azurerm_virtual_network" "vnet" {
  name                = var.network_object.name
  location            = var.network_object.location
  resource_group_name = var.network_object.resource_group_name
  address_space       = var.network_object.address_space
  dns_servers         = var.network_object.use_azure_provided_dns ? [var.azure_default_dns] : var.network_object.dns_servers
}
