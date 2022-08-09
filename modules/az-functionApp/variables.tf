variable "subscription_id" {
  type = string
  description = "subscription Id for resource group"
}

variable "client_id" {
  type = string
  description = "ClientId for local connection"
}

variable "client_secret" {
  type = string
  description = "Client secret"
}

variable "tenant_id" {
  type = string
  description = "Tenant id"
}

variable "location" {
  type = string
  description = "Location to deploy resources"
}

variable "storageAccountName" {
  type = string
  description = "Storage account name"
}

variable "resource_group_name" {
  type    = string
  description = "Resource group name"
}

variable "application_insights" {
  type = string
  description = "Application Insights"
}

variable "app_service_plan_name" {
  type = string
  description = "App service plan name"
}

variable "kind" {
  type = string
  description = "App service kind"
}
variable "app_service_plan_sku_tier" {
  type = string
  description = "App service plan SKU tier"
}

variable "app_service_plan_sku_size" {
  type = string
  description = "App service plan SKU size"
}
variable "function_app_name" {
  type = string
  description = "Function app name"
}
variable "reserved" {
  type = bool
  description = "reserved"
}

variable "os_type" {
 type = string
  description = "os_type"
}

variable "storage_account_access_key" {
  type = string
  description = "storage account access key"
}

 variable "linux_fx_version" {
   type = string
   description = "linux fx version"
 }

 variable "use_32_bit_worker_process" {
   type = bool
   description = "use 32-bit worker process"
 }

 variable "application_type" {
   type = string
   description = "application type"
 }

 variable "function_worker_runtime" {
   type = string
   description = "function worker runtime"
 }

 variable "version1" {
   type = string
   description = "version"
 }

