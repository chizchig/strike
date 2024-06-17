
output "subnet_ids" {
  description = "IDs of the created VPCs"
  value       = { for k, v in aws_subnet.subnets : k => v.id }
}

output "subnet_cider_blocks" {
  value = {for k, v in aws_subnet.subnets: k => v.cidr_block}
}