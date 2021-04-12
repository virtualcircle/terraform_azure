# create resource group
resource "azurerm_resource_group" "Az-Demo1" {
  name     = "${var.prefix}-1"
  location = var.location
}