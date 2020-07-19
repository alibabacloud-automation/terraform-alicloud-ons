output "this_topic_names" {
  description = "The list names of ONS Topic."
  value       = alicloud_ons_topic.default.*.topic
}

output "this_topic_remarks" {
  description = "The list remarks of ONS Topic."
  value       = alicloud_ons_topic.default.*.remark
}
