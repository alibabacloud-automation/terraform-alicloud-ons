#################
# Provider
#################

variable "region" {
  description = "The region ID used to launch this module resources. If not set, it will be sourced from followed by ALICLOUD_REGION environment variable and profile."
  type        = string
  default     = ""
}

variable "profile" {
  description = "The profile name as set in the shared credentials file. If not set, it will be sourced from the ALICLOUD_PROFILE environment variable."
  type        = string
  default     = ""
}
variable "shared_credentials_file" {
  description = "This is the path to the shared credentials file. If this is not set and a profile is specified, $HOME/.aliyun/config.json will be used."
  type        = string
  default     = ""
}

variable "skip_region_validation" {
  description = "Skip static validation of region ID. Used by users of alternative AlibabaCloud-like APIs or users w/ access to regions that are not public (yet)."
  type        = bool
  default     = false
}

#################
# ONS Instance
#################
variable "create_instance" {
  description = "Whether to create ons instance. If false, you can specify an existing vpc by setting 'existing_instance_id'."
  type        = bool
  default     = true
}

variable "instance_name" {
  description = "Name of ONS Instance. Two instances on a single account in the same region cannot have the same name and the number of instances in the same region cannot exceed 8. The length must be 3 to 64 characters. Chinese characters, English letters and digits are allowed."
  type        = string
  default     = ""
}

variable "existing_instance_id" {
  description = "An existing instance id used to create group and topic resources."
  type        = string
  default     = ""
}

variable "instance_remark" {
  description = "This attribute is a concise description of instance. The length cannot exceed 128."
  type        = string
  default     = ""
}

