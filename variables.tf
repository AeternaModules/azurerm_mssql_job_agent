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
    sku         = optional(string)
    tags        = optional(map(string))
    identity = optional(object({
      identity_ids = set(string)
      type         = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.mssql_job_agents : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 11 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

