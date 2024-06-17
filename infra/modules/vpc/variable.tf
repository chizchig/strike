
variable "vpc_configs" {
  type = map(object({
    cidr_block       = string
    instance_tenancy = string

  }))
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "instance_tenancy" {
  description = "Instance tenancy for the VPC"
  type        = string
}

variable "tags" {
  description = "Tags to be applied to the VPC"
  type        = map(string)
  default     = {}
}

# variable "vpc_id" {
#   description = "The ID the VPC"
#   type = string
#   default = {}
# }

variable "vpc_name" {
  description = "Name for the VPC"
  type        = map(string)
}