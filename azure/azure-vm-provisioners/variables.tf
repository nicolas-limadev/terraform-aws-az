variable "location" {
  description = "Variável que indica a região onde os recursos serão criados"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Nome do Resource Group"
  type        = string
  default     = "rg-vm"
}

variable "storage_account_name" {
  description = "Nome do Storage Account"
  type        = string
  default     = "nicklimacursotf"

}

variable "container_name" {
  description = "Nome do Container"
  type        = string
  default     = "remote-state"

}