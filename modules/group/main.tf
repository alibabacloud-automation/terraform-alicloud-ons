// Provider specific configs
provider "alicloud" {
  profile                 = var.profile != "" ? var.profile : null
  shared_credentials_file = var.shared_credentials_file != "" ? var.shared_credentials_file : null
  region                  = var.region != "" ? var.region : null
  skip_region_validation  = var.skip_region_validation
  configuration_source    = "terraform-alicloud-modules/ons"
}

resource "alicloud_ons_group" "default" {
  count       = var.number_of_group
  instance_id = var.instance_id
  group_name  = var.group_names[count.index]
  remark      = length(var.group_remarks) > count.index ? var.group_remarks[count.index] : null
}