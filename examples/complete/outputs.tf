output "this_instance_name" {
  description = "Name of ONS Instance."
  value       = module.ons.this_instance_name
}

output "this_instance_id" {
  description = "The ID used to identify ons.instance resource."
  value       = module.ons.this_instance_id
}

output "this_group_names" {
  description = "The list names of ONS Group."
  value       = module.ons.this_group_names
}

output "this_group_remarks" {
  description = "The list remarks of ONS Group."
  value       = module.ons.this_group_remarks
}

output "this_topic_names" {
  description = "The list names of ONS Topic."
  value       = module.ons.this_topic_names
}

output "this_topic_remarks" {
  description = "The list remarks of ONS Topic."
  value       = module.ons.this_topic_remarks
}
