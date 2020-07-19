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
  description = "Whether to create ons instance. If false, you can specify an existing instance by setting 'existing_instance_id'."
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
  description = "The list remarks of ONS Group. The reamrk is a concise description of group. The length of each remark cannot exceed 256."
  type        = list(string)
  default     = []
}

#################
# ONS Topic
#################

variable "number_of_topic" {
  description = "The number of ONS Topic."
  type        = number
  default     = 0
}

variable "topic_names" {
  description = "The list names of ONS Topic. Two topics on a single instance cannot have the same name and the name cannot start with 'GID' or 'CID'. The length cannot exceed 64 characters."
  type        = list(string)
  default     = []
}

variable "message_type" {
  description = "The list type of the message. Valid values: 0: normal message; 1: partitionally ordered message; 2: globally ordered message; 4: transactional message; 5: scheduled/delayed message."
  type        = list(number)
  default     = []
}

variable "topic_remarks" {
  description = "The list remarks of ONS Topic. The remark is a concise description of topic. The length of each reamrk cannot exceed 128."
  type        = list(string)
  default     = []
}

