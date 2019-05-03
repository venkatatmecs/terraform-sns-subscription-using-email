//
// Parameterize the module as much as possible, so you don't have to update these later. Try
// to avoid using "magic" strings or numbers in the module and prefer allowing these values
// to be passed in.
//
// However, note that every variable defined here is a required input to the module unless you provide a default
// value.
//
// Always include the type of the variable in even if it is a string (the default).
// Always include a meaningful description of the variable and potential values.
//
variable "name" {
  description = "The name of the SNS topic to create."
  type        = "string"
}

variable "email" {
  description = "The email address to subscribe to the topic."
  type        = "string"
}
