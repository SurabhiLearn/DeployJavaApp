  provider "azurerm" {
  version = "~> 1.27.0"
}

resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location
}

resource "azurerm_container_registry" "acr" {
  name                     = var.ac_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  sku                      = var.acr_sku
  admin_enabled            = false
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_name
  location            = "East US"
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "k8s"

  agent_pool_profile {
    name            = "default"
    count           = 1
    vm_size         = "Standard_D2_v2"
    os_type         = "Linux"
    os_disk_size_gb = 30
  }
  
  service_principal {
    client_id     = var.appId
    client_secret = var.password
  }

  role_based_access_control {
    enabled = true
  }

  tags = {
    environment = "Demo"
  }
} 

resource "azurerm_key_vault" "akv" {
  name                        = var.akv_name
  location                    = var.location
  resource_group_name         = var.rg_name
  enabled_for_disk_encryption = true
  tenant_id                   = var.tenant

  sku {
        name = "standard"
    }

  access_policy {
    tenant_id = var.tenant
    object_id = var.object_id

    key_permissions = [
      "get","list",
    ]

    secret_permissions = [
      "get","list",
    ]

    storage_permissions = [
      "get","list",
    ]
  }
}
