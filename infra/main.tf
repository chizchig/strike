
module "vpc" {
  source   = "./modules/vpc"
  for_each = var.vpc_configs

  vpc_configs      = var.vpc_configs
  cidr_block       = each.value.cidr_block
  instance_tenancy = each.value.instance_tenancy
  vpc_name         = each.value

}