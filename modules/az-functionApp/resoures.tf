//module az-functionApp

resource "azurerm_application_insights" "func_application_insights" {
  name                = var.application_insights
  location            = var.location
  resource_group_name = var.resource_group_name
  application_type    = var.application_type 
}
resource "azurerm_app_service_plan" "appServicePlan" {
  name                = var.app_service_plan_name
  location            = var.location
  resource_group_name = var.resource_group_name
  kind                = var.kind
  reserved            = var.reserved 
  sku {
    tier = var.app_service_plan_sku_tier
    size = var.app_service_plan_sku_size
    }
}
resource "azurerm_function_app" "functionApp" {
 
  name                       = var.function_app_name      
  location                   = var.location               
  resource_group_name        = var.resource_group_name    
  app_service_plan_id        = azurerm_app_service_plan.appServicePlan.id                    
  app_settings = {
    "WEBSITE_RUN_FROM_PACKAGE" = "",
    "FUNCTIONS_WORKER_RUNTIME" = var.function_worker_runtime,           
    "APPINSIGHTS_INSTRUMENTATIONKEY" = azurerm_application_insights.func_application_insights.instrumentation_key,
  }

  os_type                     = var.os_type                      
 
  site_config {
    linux_fx_version          = var.linux_fx_version            
    use_32_bit_worker_process = var.use_32_bit_worker_process   
  }
  
  storage_account_name       = var.storageAccountName     
  storage_account_access_key = var.storage_account_access_key
  version                    = var.version1

  lifecycle {
    ignore_changes = [
      app_settings["WEBSITE_RUN_FROM_PACKAGE"],
    ]
  }
}