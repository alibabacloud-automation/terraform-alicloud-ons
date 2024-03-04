output "this_instance_name" {
  description = "Name of ONS Instance."
  value       = alicloud_ons_instance.this.instance_name
}

output "this_instance_id" {
  description = "The ID used to identify ons.instance resource."
  value       = alicloud_ons_instance.this.id
}

output "this_topic_names" {
  description = "The list names of ONS Topic."
  value       = module.topic.this_topic_names
}

output "this_topic_remarks" {
  description = "The list remarks of ONS Topic.."
  value       = module.topic.this_topic_remarks
}
