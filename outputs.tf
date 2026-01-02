output "openai_service_endpoint" {
  value = azurerm_cognitive_account.openai_service.endpoint
}

output "resource_group_naming" {
  value       = module.naming.resource_group
  description = "Resource group naming convention output"
}