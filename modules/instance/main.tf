// Provider specific configs
provider "alicloud" {
  profile                 = var.profile != "" ? var.profile : null
  shared_credentials_file = var.shared_credentials_file != "" ? var.shared_credentials_file : null
  region                  = var.region != "" ? var.region : null
  skip_region_validation  = var.skip_region_validation
  configuration_source    = "terraform-alicloud-modules/ons"
}

resource "alicloud_ons_instance" "default" {
  name   = var.instance_name
  remark = var.instance_remark
}