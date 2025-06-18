output "subnets" {
  description = "Map of all subnets in the VPC with their attributes"
  value       = { for subnet in data.aws_subnet.details : subnet.id => subnet }
}

output "subnets_by_zone" {
  description = "Map of subnets grouped by availability zone"
  value = {
    for subnet in data.aws_subnet.details :
    subnet.availability_zone => subnet.id...
  }
}
