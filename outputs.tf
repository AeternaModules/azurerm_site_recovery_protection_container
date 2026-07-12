output "site_recovery_protection_containers_name" {
  description = "Map of name values across all site_recovery_protection_containers, keyed the same as var.site_recovery_protection_containers"
  value       = { for k, v in azurerm_site_recovery_protection_container.site_recovery_protection_containers : k => v.name }
}
output "site_recovery_protection_containers_recovery_fabric_name" {
  description = "Map of recovery_fabric_name values across all site_recovery_protection_containers, keyed the same as var.site_recovery_protection_containers"
  value       = { for k, v in azurerm_site_recovery_protection_container.site_recovery_protection_containers : k => v.recovery_fabric_name }
}
output "site_recovery_protection_containers_recovery_vault_name" {
  description = "Map of recovery_vault_name values across all site_recovery_protection_containers, keyed the same as var.site_recovery_protection_containers"
  value       = { for k, v in azurerm_site_recovery_protection_container.site_recovery_protection_containers : k => v.recovery_vault_name }
}
output "site_recovery_protection_containers_resource_group_name" {
  description = "Map of resource_group_name values across all site_recovery_protection_containers, keyed the same as var.site_recovery_protection_containers"
  value       = { for k, v in azurerm_site_recovery_protection_container.site_recovery_protection_containers : k => v.resource_group_name }
}

