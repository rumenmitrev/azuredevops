variable "client_id" {
  type = string
}
variable "tenant_id" {
  type = string
}
variable "subscription_id" {
  type = string
}
variable "location" {
  type = string
}
variable "client_secret" {
  type = string
}
variable "environment" {
  type    = string
  default = "dev"
}
variable "b_div" {
  type    = string
  default = "sap"
}

locals {
  owners      = var.b_div
  environment = var.environment
  common_tags = {
    owners      = local.owners
    environment = local.environment
  }
  resource_name_prefix = "${var.b_div}-${var.environment}"
}