output "mssql_job_agents_id" {
  description = "Map of id values across all mssql_job_agents, keyed the same as var.mssql_job_agents"
  value       = { for k, v in azurerm_mssql_job_agent.mssql_job_agents : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mssql_job_agents_database_id" {
  description = "Map of database_id values across all mssql_job_agents, keyed the same as var.mssql_job_agents"
  value       = { for k, v in azurerm_mssql_job_agent.mssql_job_agents : k => v.database_id if v.database_id != null && length(v.database_id) > 0 }
}
output "mssql_job_agents_identity" {
  description = "Map of identity values across all mssql_job_agents, keyed the same as var.mssql_job_agents"
  value       = { for k, v in azurerm_mssql_job_agent.mssql_job_agents : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "mssql_job_agents_location" {
  description = "Map of location values across all mssql_job_agents, keyed the same as var.mssql_job_agents"
  value       = { for k, v in azurerm_mssql_job_agent.mssql_job_agents : k => v.location if v.location != null && length(v.location) > 0 }
}
output "mssql_job_agents_name" {
  description = "Map of name values across all mssql_job_agents, keyed the same as var.mssql_job_agents"
  value       = { for k, v in azurerm_mssql_job_agent.mssql_job_agents : k => v.name if v.name != null && length(v.name) > 0 }
}
output "mssql_job_agents_sku" {
  description = "Map of sku values across all mssql_job_agents, keyed the same as var.mssql_job_agents"
  value       = { for k, v in azurerm_mssql_job_agent.mssql_job_agents : k => v.sku if v.sku != null && length(v.sku) > 0 }
}
output "mssql_job_agents_tags" {
  description = "Map of tags values across all mssql_job_agents, keyed the same as var.mssql_job_agents"
  value       = { for k, v in azurerm_mssql_job_agent.mssql_job_agents : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

