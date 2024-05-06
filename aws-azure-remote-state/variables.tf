variable "location" {
  description = "The location/region where the storage account should be created."
  type        = string
  default     = "East US"
}

variable "account_tier" {
  description = "value of the storage account tier."
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "value of the storage account replication type."
  type        = string
  default     = "LRS"

}