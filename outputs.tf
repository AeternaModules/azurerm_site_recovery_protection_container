output "site_recovery_protection_containers_id" {
  description = "Map of id values across all site_recovery_protection_containers, keyed the same as var.site_recovery_protection_containers"
  value       = { for k, v in azurerm_site_recovery_protection_container.site_recovery_protection_containers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "site_recovery_protection_containers_name" {
  description = "Map of name values across all site_recovery_protection_containers, keyed the same as var.site_recovery_protection_containers"
  value       = { for k, v in azurerm_site_recovery_protection_container.site_recovery_protection_containers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "site_recovery_protection_containers_recovery_fabric_name" {
  description = "Map of recovery_fabric_name values across all site_recovery_protection_containers, keyed the same as var.site_recovery_protection_containers"
  value       = { for k, v in azurerm_site_recovery_protection_container.site_recovery_protection_containers : k => v.recovery_fabric_name if v.recovery_fabric_name != null && length(v.recovery_fabric_name) > 0 }
}
output "site_recovery_protection_containers_recovery_vault_name" {
  description = "Map of recovery_vault_name values across all site_recovery_protection_containers, keyed the same as var.site_recovery_protection_containers"
  value       = { for k, v in azurerm_site_recovery_protection_container.site_recovery_protection_containers : k => v.recovery_vault_name if v.recovery_vault_name != null && length(v.recovery_vault_name) > 0 }
}
output "site_recovery_protection_containers_resource_group_name" {
  description = "Map of resource_group_name values across all site_recovery_protection_containers, keyed the same as var.site_recovery_protection_containers"
  value       = { for k, v in azurerm_site_recovery_protection_container.site_recovery_protection_containers : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}

