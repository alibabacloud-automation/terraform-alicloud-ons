output "this_instance_name" {
  description = "Name of ONS Instance."
  value       = module.instance.this_instance_name
}

output "this_instance_id" {
  description = "The ID used to identify ons.instance resource."
  value       = module.instance.this_instance_id
}

output "this_instance_remark" {
  description = "This attribute is a concise description of instance."
  value       = module.instance.this_instance_remark
}
