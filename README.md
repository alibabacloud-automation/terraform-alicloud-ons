Alibaba Cloud ONS Terraform Module
terraform-alicloud-ons
=====================================================================

English | [简体中文](https://github.com/terraform-alicloud-modules/terraform-alicloud-ons/blob/master/README-CN.md)

Terraform module which create Apache RocketMQ related components on Alibaba Cloud.

These types of resources are supported:

* [ONS Instance](https://www.terraform.io/docs/providers/alicloud/r/ons_instance.html)
* [ONS Group](https://www.terraform.io/docs/providers/alicloud/r/ons_group.html)
* [ONS Topic](https://www.terraform.io/docs/providers/alicloud/r/ons_topic.html)


## Terraform versions

The Module requires Terraform 0.12 and Terraform Provider AliCloud 1.56.0+.

## Usage

```hcl
module "ons" {
    source      = "terraform-alicloud-modules/ons/alicloud"
    region      = "cn-beijing"
    profile     = "Your-Profile-Name"
    
    #################
    # ONS Instance
    #################
    // The module will launch a new instance if 'create_instance' is true. And true is also the default value of 'create_instance'.
    // If you want to use an existing instance, make sure 'create_instance' is false and set the ‘existing_instance_id’ correctly.
    // An existing instance in the specified region will be selected randomly if there is not specifying ‘existing_instance_id’ and 'create_instance' is false.
    // create_instance      = false
    // existing_instance_id = "MQ_INST_123456789"

    instance_remark   = "myInstance"
    instance_name     = "defaultInstance"

    #################
    # ONS Group
    #################
    number_of_group = 2
    group_names     = ["GID_test01", "GID_test02"]
    group_remarks   = ["myGroup01", "myGroup02"]

    #################
    # ONS Topic
    #################
    number_of_topic = 2
    topic_names     = ["testTopic01", "testTopic02"]
    message_type    = [0, 0]
    topic_remarks   = ["myTopic01", "myTopic02"]
}

```

## Examples

* [complete](https://github.com/terraform-alicloud-modules/terraform-alicloud-ons/tree/master/examples/complete)
* [instance](https://github.com/terraform-alicloud-modules/terraform-alicloud-ons/tree/master/examples/instance)
* [group](https://github.com/terraform-alicloud-modules/terraform-alicloud-ons/tree/master/examples/group)
* [topic](https://github.com/terraform-alicloud-modules/terraform-alicloud-ons/tree/master/examples/topic)


## Notes

* This module using AccessKey and SecretKey are from `profile` and `shared_credentials_file`.
If you have not set them yet, please install [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) and configure it.

Submit Issues
-------------
If you have any problems when using this module, please opening a [provider issue](https://github.com/terraform-providers/terraform-provider-alicloud/issues/new) and let us know.

**Note:** There does not recommend to open an issue on this repo.

Authors
-------
Created and maintained by Chen Yongming(@supercym, cym467000@outlook.com) and He Guimin(@xiaozhu36, heguimin36@163.com)

License
----
Apache 2 Licensed. See LICENSE for full details.

Reference
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)
