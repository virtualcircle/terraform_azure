provider "azurerm" {
  features {}

  subscription_id = var.subscriptionid
  client_id       = var.clientid
  client_secret   = var.clientsecret
  tenant_id       = var.tenantid
  #version = ">=2.4"
}


/*
resource "azurerm_storage_account" "prod" {
  name                     = "tfsudhasa15"
  resource_group_name      = azurerm_resource_group.Az-Demo1.name
  location                 = azurerm_resource_group.Az-Demo1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  #count = var.tfsa == false ? 1 : 0
  
  tags = {
    environment = "prod"
  }
}

resource "azurerm_storage_container" "example" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.prod.name
  container_access_type = "private"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "Tf-Demo-1"
    storage_account_name = "tfsudhasa15"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}
*/