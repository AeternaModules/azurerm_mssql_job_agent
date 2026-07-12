output "mssql_job_agents_database_id" {
  description = "Map of database_id values across all mssql_job_agents, keyed the same as var.mssql_job_agents"
  value       = { for k, v in azurerm_mssql_job_agent.mssql_job_agents : k => v.database_id }
}
output "mssql_job_agents_identity" {
  description = "Map of identity values across all mssql_job_agents, keyed the same as var.mssql_job_agents"
  value       = { for k, v in azurerm_mssql_job_agent.mssql_job_agents : k => v.identity }
}
output "mssql_job_agents_location" {
  description = "Map of location values across all mssql_job_agents, keyed the same as var.mssql_job_agents"
  value       = { for k, v in azurerm_mssql_job_agent.mssql_job_agents : k => v.location }
}
output "mssql_job_agents_name" {
  description = "Map of name values across all mssql_job_agents, keyed the same as var.mssql_job_agents"
  value       = { for k, v in azurerm_mssql_job_agent.mssql_job_agents : k => v.name }
}
output "mssql_job_agents_sku" {
  description = "Map of sku values across all mssql_job_agents, keyed the same as var.mssql_job_agents"
  value       = { for k, v in azurerm_mssql_job_agent.mssql_job_agents : k => v.sku }
}
output "mssql_job_agents_tags" {
  description = "Map of tags values across all mssql_job_agents, keyed the same as var.mssql_job_agents"
  value       = { for k, v in azurerm_mssql_job_agent.mssql_job_agents : k => v.tags }
}

