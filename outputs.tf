output "site_recovery_protection_containers" {
  description = "All site_recovery_protection_container resources"
  value       = azurerm_site_recovery_protection_container.site_recovery_protection_containers
}
output "site_recovery_protection_containers_name" {
  description = "List of name values across all site_recovery_protection_containers"
  value       = [for k, v in azurerm_site_recovery_protection_container.site_recovery_protection_containers : v.name]
}
output "site_recovery_protection_containers_recovery_fabric_name" {
  description = "List of recovery_fabric_name values across all site_recovery_protection_containers"
  value       = [for k, v in azurerm_site_recovery_protection_container.site_recovery_protection_containers : v.recovery_fabric_name]
}
output "site_recovery_protection_containers_recovery_vault_name" {
  description = "List of recovery_vault_name values across all site_recovery_protection_containers"
  value       = [for k, v in azurerm_site_recovery_protection_container.site_recovery_protection_containers : v.recovery_vault_name]
}
output "site_recovery_protection_containers_resource_group_name" {
  description = "List of resource_group_name values across all site_recovery_protection_containers"
  value       = [for k, v in azurerm_site_recovery_protection_container.site_recovery_protection_containers : v.resource_group_name]
}

