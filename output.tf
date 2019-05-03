//
// Not all modules require outputs; values in here should be values that another config will want to access from
// the remote state. Variables and outputs together form the API for a module, so any modification to these is
// a version bump for the module.
//
output "arn" {
  value = "${aws_sns_topic.topic.arn}"
}
