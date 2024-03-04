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

resource "random_integer" "default" {
  max = 99999
  min = 10000
}

module "instance" {

  source = "../../modules/instance"
  region = var.region

  #instance
  instance_name   = "test_instance-${random_integer.default.result}"
  instance_remark = "test_instance_remark"

}


