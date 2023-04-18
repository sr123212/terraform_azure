output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "public_ip_address1" {
  value = azurerm_linux_virtual_machine.my_terraform_vm1.public_ip_address
}

output "public_ip_address2" {
  value = azurerm_linux_virtual_machine.my_terraform_vm2.public_ip_address
}

output "tls_private_key" {
  value     = tls_private_key.example_ssh.private_key_pem
  sensitive = true
}

#---LB---
output "azurerm_lb_backend_address_pool_id" {
  description = "the id for the azurerm_lb_backend_address_pool resource"
  value       = azurerm_lb_backend_address_pool.azlb.id
}

output "azurerm_lb_frontend_ip_configuration" {
  description = "the frontend_ip_configuration for the azurerm_lb resource"
  value       = azurerm_lb.azlb.frontend_ip_configuration
}

output "azurerm_lb_id" {
  description = "the id for the azurerm_lb resource"
  value       = azurerm_lb.azlb.id
}

output "azurerm_lb_nat_rule_ids" {
  description = "the ids for the azurerm_lb_nat_rule resources"
  value       = azurerm_lb_nat_rule.azlb[*].id
}

output "azurerm_lb_probe_ids" {
  description = "the ids for the azurerm_lb_probe resources"
  value       = azurerm_lb_probe.azlb[*].id
}

output "azurerm_public_ip_address" {
  description = "the ip address for the azurerm_lb_public_ip resource"
  value       = azurerm_public_ip.azlb[*].ip_address
}

output "azurerm_public_ip_id" {
  description = "the id for the azurerm_lb_public_ip resource"
  value       = azurerm_public_ip.azlb[*].id
}

output "azurerm_resource_group_name" {
  description = "name of the resource group provisioned"
  value       = data.azurerm_resource_group.azlb.name
}

output "azurerm_resource_group_tags" {
  description = "the tags provided for the resource group"
  value       = data.azurerm_resource_group.azlb.tags
}