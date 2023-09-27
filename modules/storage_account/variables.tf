variable "name" {
  type        = string
  description = "Name of the Storage Account"
}
variable "location" {
  type        = string
  description = "The Azure Region to use"
}
variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}
variable "public_network_access_enabled" {
  type = bool
  description = "Will the storage account have public access?"
}
variable "environment" {
  type = string
  description = "Assign the environment name to its corresponding tag"
}
variable "project_name" {
  type = string
  description = "Assign the project name to its corresponding tag"
}
