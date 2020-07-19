output "this_instance_name" {
  description = "Name of ONS Instance."
  value       = local.this_instance_name
}

output "this_instance_id" {
  description = "The ID used to identify ons instance resource."
  value       = local.this_instance_id

}

output "this_instance_remark" {
  description = "This attribute is a concise description of instance."
  value       = local.this_instance_remark

}

output "this_group_names" {
  description = "The list names of ONS Group."
  value       = alicloud_ons_group.default.*.group_id
}

output "this_group_remarks" {
  description = "The list remarks of ONS Group."
  value       = alicloud_ons_group.default.*.remark
}

output "this_topic_names" {
  description = "The list names of ONS Topic."
  value       = alicloud_ons_topic.default.*.topic
}

output "this_topic_remarks" {
  description = "The list remarks of ONS Topic."
  value       = alicloud_ons_topic.default.*.remark
}
