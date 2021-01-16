variable "network_object" {
  type = object({
    name                    = string
    location                = string
    resource_group_name     = string
    address_space           = list(string)
    dns_servers             = list(string)
    use_azure_provided_dns  = bool
  })
}

# https://docs.microsoft.com/en-us/azure/virtual-network/what-is-ip-address-168-63-129-16
variable "azure_default_dns" {
  type = string
  default = "168.63.129.16"
}
