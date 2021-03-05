variable "cloud" {
  default = "ROW"
  description = "Indicates which Azure cloud to connect to (ROW or China). Defaults to ROW."
}

variable "subscription_id" {
  description = "Enter Subscription ID to deploy to."
}

variable "subscription_name" {
  description = "Subscription name"
}

variable "app_id" {
  description = "ITMS Application ID"
}

variable "resource_group_name" {
  description = "Resource Group Name to deploy to."
  default = "test-resource-group"
}

variable "app_env" {
  default = "dev"
  description = "Application environment type (dev,qa,stg,uat,prod). Defaults to dev."
}

variable "regions" {
    type        = "string"
    default     = "eastus2"
    description = "Regions to deploy your resources, can be one or two (for geo-replication). Defaults to East US."
}
variable "proj_name" {
  type        = "string"
  description = "Project name"
}

variable "tenant_id" {
  type        = "string"
  description = "Tenant ID."
}

variable "client_id" {
  type        = "string"
  description = "Service Principal Client-ID"
}

variable "client_secret" {
  type        = "string"
  description = "Service Principal Client-secret"
}