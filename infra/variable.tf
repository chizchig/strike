variable "vpc_configs" {
  type = map(object({
    cidr_block       = string
    instance_tenancy = string

  }))
}

variable "tags" {
  description = "Tags to be applied to the VPC"
  type        = map(string)
  default     = {}
}

variable "subnet_configs" {
  type = map(object({
    name                            = string
    vpc_key                         = string
    cidr_block                      = string
    map_public_ip_on_launch         = string
    assign_ipv6_address_on_creation = bool
    enable_dns64                    = bool
  }))
}

variable "vpc_id" {
  description = "The ID the VPC"
  type = string
}