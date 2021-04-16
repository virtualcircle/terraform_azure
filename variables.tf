
variable "subscriptionid" {
  description = "Provide subscription id"
  default     = "0bdd805a-bc5f-4b2f-abe4-0bf636bf9f2c"
}

variable "clientid" {
  description = "Provide clientid id"
  default     = "e31d0bff-1b77-480a-b22e-6c45a6e01a42"
}

variable "clientsecret" {
  description = "Provide clientsecret id"
  default     = "mPALy~oaPJHAPPLz7G--9Z0PSQecxgSs2."
}

variable "tenantid" {
  description = "Provide tenantid id"
  default     = "55d102a7-e3ff-45e9-b919-eeba16ce2c75"
}

variable "prefix" {
  description = "The prefix which should be used for all resources in this example"
  default     = "Tf-Demo"
}

variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
  #type = list(string)
  default = "East US"
}

variable "nsg_ports" {
  type        = list(number)
  default     = [80, 443, 22, 8080]
  description = "List of inbound ports"
}

variable "mapping" {
  type        = map(any)
  description = "VM instance size"
  default = {
    test = "Standard_B2ms"
    dev = "Standard_B1ms"
    prod = "Standard_B3ms"
  }
}

variable "username" {
  description = "Linux vm admin account"
  default     = "adminuser1"
}

variable "password" {
  description = "Linux vm admin account"
  default     = "P@ssw0rd123!"
}

locals {
  comman_tags = {
    env   = "prod1"
    owner = "sudha"
  }
}

/*
variable "tfsa" {
  #type = list
  #default = ["tfsudha10","tfsudha11","tfsudha12"]
}
*/