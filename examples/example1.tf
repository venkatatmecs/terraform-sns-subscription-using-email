//
// Create a new topic and subscribe to it
//
module "example1" {
  # source = "github.com/instacart/terraform-sns-subscription-using-email?ref=v1.0.0"
  source = ".."

  name  = "mytopic"
  email = "mytopic@example.com"
}
