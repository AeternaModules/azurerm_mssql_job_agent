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
  # --- Unconfirmed validation candidates, derived from azurerm_mssql_job_agent's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    validate.ValidateMsSqlJobAgentName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: database_id
  #   source:    [from commonids.ValidateSqlDatabaseID] !ok
  # path: database_id
  #   source:    [from commonids.ValidateSqlDatabaseID] err != nil
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: identity.type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
  # path: sku
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

