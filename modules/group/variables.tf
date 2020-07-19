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

variable "instance_id" {
  description = "The ID used to identify ons instance resource."
  type        = string
}

#################
# ONS Group
#################

variable "number_of_group" {
  description = "The number of ONS Group."
  type        = number
  default     = 0
}

variable "group_names" {
  description = "The list names of ONS Group. Two groups on a single instance cannot have the same name and the name must start with 'GID-' or 'GID_'. The length must be 7 to 64 characters."
  type        = list(string)
  default     = []
}

variable "group_remarks" {
  description = "The list remarks of ONS Group. The reamrk is a concise description of group. The length cannot exceed 256."
  type        = list(string)
  default     = []
}

