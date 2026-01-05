

##
# Variables
##

##
# Common Variables
##
variable "tag_environment" {
  type        = string
  description = "The environment for the resources"
  default     = "Testing"
}

variable "tag_project" {
  type        = string
  description = "The project for the resources"
  default     = "Foundry"
}

variable "tag_creator" {
  type        = string
  description = "The creator for the resources"
  default     = "TechieLass"
}

variable "location" {
  type    = string
  default = "UK South"
}

variable "azure_subscription_id" {
  description = "Azure subscription ID"
  type        = string
  sensitive   = true
}

variable "aiserviceaccountname" {
  type        = string
  description = "Name for the Azure AI (Cognitive) account"
}

variable "sku" {
  type        = string
  description = "SKU name for the Azure AI (Cognitive) account (e.g. S0)"
  default     = "S0"
}

variable "modeldeploymentname" {
  type        = string
  description = "Name for the model deployment"
  default     = "techielassmodel"
}

variable "model" {
  type        = string
  description = "Model name (e.g. gpt-4o, gpt-5)"
  default     = "gpt-4o"
}

variable "modelversion" {
  type        = string
  description = "Model version identifier"
  default     = "2024-11-20"
}

variable "capacity" {
  type        = number
  description = "Deployment capacity units"
  default     = 10
}

variable "custom_subdomain_name" {
  description = "Custom domain name for the Azure AI Services endpoint"
  type        = string
}
