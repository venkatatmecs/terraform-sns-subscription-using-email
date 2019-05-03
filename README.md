# *terraform-sns-subscription-using-email*

Manage an SNS topic with an email subscription, which is not well-supported by Terraform.

See https://www.terraform.io/docs/providers/aws/r/sns_topic_subscription.html#protocols-supported

## Usage

Provide at least one example of the usage of this module under the `examples/` 
directory. "At least one" does not mean that one is always sufficient; if the module
has multiple use cases, provide sufficient examples for users of the module to
be able to use it for any intended use.

> [Example: Create and subscribe to a topic](examples/example1.tf)

## Resources 

This module creates an SNS topic and an SNS topic subscription.

## TODO

* Modify the subscription if the topic is modified 
* Destroy the subscription if the topic is destroyed
