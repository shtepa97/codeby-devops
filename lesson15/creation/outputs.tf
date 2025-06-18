output "instance_id" {
  description = "ID of the created instance"
  value       = try(aws_instance.vm[0].id, null)
}

output "subnet_id" {
  description = "ID of the subnet where the instance was created"
  value       = try(aws_instance.vm[0].subnet_id, null)
}
