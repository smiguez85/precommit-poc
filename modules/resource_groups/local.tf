locals {
  tags = {
    environment = var.environment
    project     = var.project_name
    managedBy   = "terraform"
  }
}
