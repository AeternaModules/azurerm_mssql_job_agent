variable "mssql_job_agents" {
  description = <<EOT
Map of mssql_job_agents, attributes below
Required:
    - database_id
    - location
    - name
Optional:
    - sku
    - tags
    - identity (block):
        - identity_ids (required)
        - type (required)
EOT

  type = map(object({
    database_id = string
    location    = string
    name        = string
    sku         = optional(string) # Default: "JA100"
    tags        = optional(map(string))
    identity = optional(object({
      identity_ids = set(string)
      type         = string
    }))
  }))
}

