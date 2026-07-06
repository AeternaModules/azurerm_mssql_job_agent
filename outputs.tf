output "mssql_job_agents" {
  description = "All mssql_job_agent resources"
  value       = azurerm_mssql_job_agent.mssql_job_agents
}
output "mssql_job_agents_database_id" {
  description = "List of database_id values across all mssql_job_agents"
  value       = [for k, v in azurerm_mssql_job_agent.mssql_job_agents : v.database_id]
}
output "mssql_job_agents_identity" {
  description = "List of identity values across all mssql_job_agents"
  value       = [for k, v in azurerm_mssql_job_agent.mssql_job_agents : v.identity]
}
output "mssql_job_agents_location" {
  description = "List of location values across all mssql_job_agents"
  value       = [for k, v in azurerm_mssql_job_agent.mssql_job_agents : v.location]
}
output "mssql_job_agents_name" {
  description = "List of name values across all mssql_job_agents"
  value       = [for k, v in azurerm_mssql_job_agent.mssql_job_agents : v.name]
}
output "mssql_job_agents_sku" {
  description = "List of sku values across all mssql_job_agents"
  value       = [for k, v in azurerm_mssql_job_agent.mssql_job_agents : v.sku]
}
output "mssql_job_agents_tags" {
  description = "List of tags values across all mssql_job_agents"
  value       = [for k, v in azurerm_mssql_job_agent.mssql_job_agents : v.tags]
}

