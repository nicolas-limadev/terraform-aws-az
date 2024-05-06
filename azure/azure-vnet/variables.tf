variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
  type        = string
  default     = "eastus"

}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the virtual network."
  type        = string
  default     = "rg-vnet"

}