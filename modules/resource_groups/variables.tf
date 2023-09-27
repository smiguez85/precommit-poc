variable "location" {
  type        = string
  description = "The Azure Region to use"
}
variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}
variable "environment" {
  type = string
  description = "Assign the environment name to its corresponding tag"
}
variable "project_name" {
  type = string
  description = "Assign the project name to its corresponding tag"
}
