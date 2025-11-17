##
# Terraform Configuration
##

terraform {
  required_version = ">= 1.10.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.71, < 5.0.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.5.1, < 4.0.0"
    }
    azapi = {
      source  = "Azure/azapi"
      version = ">= 2.2.0, < 3.0.0"
    }
  }
}

provider "azapi" {
  # Configuration options
}

provider "azurerm" {
  features {}
  subscription_id = var.azure_subscription_id
}

# This ensures we have unique CAF compliant names for our resources.
module "naming" {
  source  = "Azure/naming/azurerm"
  version = "0.3.0"
}

# This is required for resource modules
resource "azurerm_resource_group" "rg" {
  location = var.location
  name     = module.naming.resource_group.name_unique

  tags = {
    Environment = var.tag_environment
    Project     = var.tag_project
    Creator     = var.tag_creator
  }
}


