
variable "name" {
  type = "string"
}
variable "package" {
  type = "string"
}
variable "handler" {
  type = "string"
  default = "index.handler"
}
variable "runtime" {
  type = "string"
}
variable "timeout" {
  type = "string"
  default = 300
}
variable "security_groups" {
  type = "list"
  default = []
}
variable "subnets" {
  type = "list"
  default = []
}
variable "environment_variables" {
  type = "map"
  default = {}
}
variable "iam_policy_arns" {
  type = "list"
  description = "A list of additional IAM policy ARNs to attach to the function's role."
  default = []
}
variable "iam_policies" {
  type = "list"
  description = "A list of additional IAM policies to attach to the function."
  default = []
}
variable "schedule" {
  type = "map"
  description = "Schedule expressions to use to invoke the lambda regularly"
  default = {}
}
variable "tags" {
  type = "map"
  default = {}
}
variable "error_topics" {
  type = "list"
  description = "An array of SNS topics to publish notifications to when the function errors out"
  default = []
}