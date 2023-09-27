variable "virtual_network_name" {
  description = "Name of the virtual network"
  type        = string
}
variable "virtual_subnetwork_name" {
  description = "Name of the subnet"
  type        = string
}
variable "network_cidr" {
  description = "CIDR of the virtual network"
  type        = string
  validation {
    condition     = can(cidrnetmask(var.network_cidr))
    error_message = "Must be a valid IPv4 CIDR block address"
  }
}
variable "location" {
  type        = string
  description = "The Azure Region to use"
}
variable "resource_group_name" {
  type        = string
  description = "The name of the vnet resource group"
}
variable "environment" {
  type        = string
  description = "Assign the environment name to its corresponding tag"
}
variable "project_name" {
  type        = string
  description = "Assign the project name to its corresponding tag"
}
