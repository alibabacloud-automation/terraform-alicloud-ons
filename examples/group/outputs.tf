output "this_instance_name" {
  description = "Name of ONS Instance."
  value       = alicloud_ons_instance.this.instance_name
}

output "this_instance_id" {
  description = "The ID used to identify ons.instance resource."
  value       = alicloud_ons_instance.this.id
}

output "this_group_names" {
  description = "The list names of ONS Group."
  value       = module.group.this_group_names
}

output "this_group_remarks" {
  description = "The list remarks of ONS Group."
  value       = module.group.this_group_remarks
}

