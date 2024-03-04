// Provider specific configs
provider "alicloud" {
  profile                 = var.profile != "" ? var.profile : null
  shared_credentials_file = var.shared_credentials_file != "" ? var.shared_credentials_file : null
  region                  = var.region != "" ? var.region : null
  skip_region_validation  = var.skip_region_validation
  configuration_source    = "terraform-alicloud-modules/ons"
}

locals {
  this_instance_id     = var.create_instance ? alicloud_ons_instance.default[0].id : var.existing_instance_id != "" ? var.existing_instance_id : data.alicloud_ons_instances.this.ids[0]
  this_instance_name   = var.create_instance ? alicloud_ons_instance.default[0].instance_name : data.alicloud_ons_instances.this.names[0]
  this_instance_remark = var.create_instance ? alicloud_ons_instance.default[0].remark : null
}

data "alicloud_ons_instances" "this" {
  ids = var.existing_instance_id != "" ? [var.existing_instance_id] : null
}

resource "alicloud_ons_instance" "default" {
  count         = var.create_instance ? 1 : 0
  instance_name = var.instance_name
  remark        = var.instance_remark
}

resource "alicloud_ons_group" "default" {
  instance_id = local.this_instance_id
  count       = var.number_of_group
  group_name  = var.group_names[count.index]
  remark      = length(var.group_remarks) > count.index ? var.group_remarks[count.index] : null
}

resource "alicloud_ons_topic" "default" {
  instance_id  = local.this_instance_id
  count        = var.number_of_topic
  topic_name   = var.topic_names[count.index]
  message_type = length(var.message_type) > count.index ? var.message_type[count.index] : 0
  remark       = length(var.topic_remarks) > count.index ? var.topic_remarks[count.index] : null
}

