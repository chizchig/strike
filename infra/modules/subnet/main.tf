data "aws_availability_zones" "available" {}

resource "aws_subnet" "subnets" {
  for_each = var.subnet_configs

  vpc_id                          = var.vpc_id[each.value.vpc_key]
  cidr_block                      = each.value.cidr_block
  availability_zone               = data.aws_availability_zones.available.names[index(keys(var.subnet_configs), each.key)]
  map_public_ip_on_launch         = each.value.map_public_ip_on_launch
  assign_ipv6_address_on_creation = each.value.assign_ipv6_address_on_creation
  enable_dns64                    = each.value.enable_dns64
}