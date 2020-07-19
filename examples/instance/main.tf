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

module "instance" {

  source = "../../modules/instance"
  region = var.region

  #instance
  instance_name   = "test_instance"
  instance_remark = "test_instance_remark"

}


