Alibaba Cloud ONS Terraform Module
terraform-alicloud-ons
=====================================================================

本 Module 用于在阿里云创建消息队列Apache RocketMQ相关资源. 

本 Module 支持创建以下资源:

* [ONS Instance](https://www.terraform.io/docs/providers/alicloud/r/ons_instance.html)
* [ONS Group](https://www.terraform.io/docs/providers/alicloud/r/ons_group.html)
* [ONS Topic](https://www.terraform.io/docs/providers/alicloud/r/ons_topic.html)


## Terraform 版本

本 Module 要求使用 Terraform 0.12 和 阿里云 Provider 1.56.0+。

## 用法

```hcl
module "ons" {
    source      = "terraform-alicloud-modules/ons/alicloud"
    region      = "cn-beijing"
    profile     = "Your-Profile-Name"
    
    #################
    # ONS Instance
    #################
    // 如果 'create_instance' 设置为 true，本 module 将会生成一个新的 instance。true 也是 'create_instance' 的默认值。
    // 如果您想要使用现有的 instance，请确保 'create_instance' 为 false，同时在 ‘existing_instance_id’ 中设置对应 instance 的 id。
    // 如果 'create_instance' 为 false 且 ‘existing_instance_id’ 未被设置，本 module 将会在指定 region 中随机选择一台现有的 instance 用于创建 group 和 topic 资源。
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

## 示例

* [完整示例](https://github.com/terraform-alicloud-modules/terraform-alicloud-ons/tree/master/examples/complete)
* [instance 创建示例](https://github.com/terraform-alicloud-modules/terraform-alicloud-ons/tree/master/examples/instance)
* [group 创建示例](https://github.com/terraform-alicloud-modules/terraform-alicloud-ons/tree/master/examples/group)
* [topic 创建示例](https://github.com/terraform-alicloud-modules/terraform-alicloud-ons/tree/master/examples/topic)

## 注意事项

* 本 Module 使用的 AccessKey 和 SecretKey 可以直接从 `profile` 和 `shared_credentials_file` 中获取。如果未设置，可通过下载安装 [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) 后进行配置.

提交问题
-------
如果在使用该 Terraform Module 的过程中有任何问题，可以直接创建一个 [Provider Issue](https://github.com/terraform-providers/terraform-provider-alicloud/issues/new)，我们将根据问题描述提供解决方案。

**注意:** 不建议在该 Module 仓库中直接提交 Issue。

作者
-------
Created and maintained by Chen Yongming(@supercym, cym467000@outlook.com) and He Guimin(@xiaozhu36, heguimin36@163.com)

许可
----
Apache 2 Licensed. See LICENSE for full details.

参考
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)