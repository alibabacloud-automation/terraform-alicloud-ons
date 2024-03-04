output "this_group_names" {
  description = "The list names of ONS Group."
  value       = alicloud_ons_group.default.*.group_name
}

output "this_group_remarks" {
  description = "The list remarks of ONS Group."
  value       = alicloud_ons_group.default.*.remark
}
