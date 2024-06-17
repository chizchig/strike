
output "vpc_ids" {
  value = {
    for vpc_key, vpc_configs in module.vpc : vpc_key => vpc_configs.name
  }
}