
resource "aws_vpc" "network" {
  for_each = var.vpc_configs

  cidr_block       = each.value.cidr_block
  instance_tenancy = each.value.instance_tenancy


#   tags = {
#     Name = "network-${var.vpc_name[each.key]}"
#     }
}

locals {
  vpc_ids = { for k, v in aws_vpc.network : k => v.id }
}