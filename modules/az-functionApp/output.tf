output "application_insights" {
  value = azurerm_application_insights.func_application_insights.name
  description = "Application insights"
 }

output "app_service_plan_name" {
  value = azurerm_app_service_plan.appServicePlan.name
  description = "App service plan name"
 }

output "function_app_name" {
  value = azurerm_function_app.functionApp.name
  description = "Function app name"
}