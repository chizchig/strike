
output "vpc_ids" {
  value = {
    for vpc_key, vpc_configs in aws_vpc.network : vpc_key => vpc_configs.id
  }
}

# output "vpc_id" {
#   value = { for k in aws_vpc.network : k => aws_vpc.network[k].id }
# }


output "vpc_id" {
  value = local.vpc_ids
}