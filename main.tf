//
// Create an SNS topic and subscribe to it using an email address. Since the address needs to be verified,
// this will not work with the usual `aws_sns_topic_subscription` resource, so we do it via a local exec.
//
// See https://www.terraform.io/docs/providers/aws/r/sns_topic_subscription.html#protocols-supported
//
resource "aws_sns_topic" "topic" {
  name = "${var.name}"

  provisioner "local-exec" {
    command     = "python3 ${path.module}/scripts/subscribe.py ${aws_sns_topic.topic.arn} ${var.email} ${var.assume_role}"
    working_dir = "${path.module}/scripts"
  }
}
