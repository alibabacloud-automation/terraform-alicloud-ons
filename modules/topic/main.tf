// Provider specific configs
provider "alicloud" {
  profile                 = var.profile != "" ? var.profile : null
  shared_credentials_file = var.shared_credentials_file != "" ? var.shared_credentials_file : null
  region                  = var.region != "" ? var.region : null
  skip_region_validation  = var.skip_region_validation
  configuration_source    = "terraform-alicloud-modules/ons"
}

resource "alicloud_ons_topic" "default" {
  instance_id  = var.instance_id
  count        = var.number_of_topic
  topic_name   = var.topic_names[count.index]
  message_type = length(var.message_type) > count.index ? var.message_type[count.index] : 0
  remark       = length(var.topic_remarks) > count.index ? var.topic_remarks[count.index] : null
}