
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
  description = "The ID of VPC"
  type        = map(string)
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
}