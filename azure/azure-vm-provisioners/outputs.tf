output "vm_ip" {
  description = "IP da VM Azure"
  value = azurerm_linux_virtual_machine.vm.public_ip_address
}