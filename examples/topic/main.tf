variable "region" {
  default = "cn-beijing"
}

variable "profile" {
  default = "default"
}

provider "alicloud" {
  region  = var.region
  profile = var.profile
}

resource "alicloud_ons_instance" "this" {
  name   = "test_instance"
  remark = "test_instance_remark"
}

module "topic" {

  source = "../../modules/topic"
  region = var.region

  #instance
  instance_id       = alicloud_ons_instance.this.id

  #topic
  number_of_topic   = 2
  topic_names       = ["test_topic01", "test_topic02"]
  message_type      = [0, 1]
  topic_remarks     = ["test_topic_remark01", "test_topic_remark02"]

}


