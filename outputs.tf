# https://www.terraform.io/docs/configuration/outputs.html
output "vnets" {
  value = azurerm_virtual_network.vnet
}
