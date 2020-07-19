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

module "ons" {

  source = "../../"
  region = "cn-beijing"

  #instance
  instance_name     = "test_instance"
  instance_remark   = "test_instance_remark"


  #group
  number_of_group   = 2
  group_names       = ["GID_test01", "GID_test02"]
  group_remarks     = ["test_group_remark01", "test_group_remark02"]

  #topic
  number_of_topic   = 2
  topic_names       = ["test_topic01", "test_topic02"]
  message_type      = [0, 0]
  topic_remarks     = ["test_topic_reamrk01", "test_topic_reamrk02"]
}



