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
  validation {
    condition = alltrue([
      for k, v in var.site_recovery_protection_containers : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.site_recovery_protection_containers : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.site_recovery_protection_containers : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.site_recovery_protection_containers : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.site_recovery_protection_containers : (
        length(v.recovery_fabric_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

