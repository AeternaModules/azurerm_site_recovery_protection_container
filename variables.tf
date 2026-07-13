variable "site_recovery_protection_containers" {
  description = <<EOT
Map of site_recovery_protection_containers, attributes below
Required:
    - name
    - recovery_fabric_name
    - recovery_vault_name
    - resource_group_name
EOT

  type = map(object({
    name                 = string
    recovery_fabric_name = string
    recovery_vault_name  = string
    resource_group_name  = string
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_site_recovery_protection_container's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: recovery_vault_name
  #   source:    validate.RecoveryServicesVaultName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: recovery_fabric_name
  #   condition: length(value) > 0
  #   message:   must not be empty
}

