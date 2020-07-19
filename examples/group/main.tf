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

module "group" {

  source = "../../modules/group"
  region = var.region

  #instance
  instance_id     = alicloud_ons_instance.this.id

  #group
  number_of_group = 2
  group_names     = ["GID_test01", "GID_test02"]
  group_remarks   = ["test_group_remark01", "test_group_remark02"]

}



