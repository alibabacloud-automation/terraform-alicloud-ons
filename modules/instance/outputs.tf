output "this_instance_name" {
  description = "Name of ONS Instance."
  value       = alicloud_ons_instance.default.name
}

output "this_instance_id" {
  description = "The ID used to identify ons instance resource."
  value       = alicloud_ons_instance.default.id
}

output "this_instance_remark" {
  description = "This attribute is a concise description of instance."
  value       = alicloud_ons_instance.default.remark
}