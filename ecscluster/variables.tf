variable "name" {
  type = "string"
}

variable "tags" {
  type        = "map"
  description = "A map of tags to use for created resources"
  default     = {}
}

variable "vpc" {
  type = "string"
}

variable "subnets" {
  type = "list"
}

variable "instance_type" {
  type        = "string"
  description = "The instance type to launch."
}

variable "capacity" {
  type        = "string"
  description = "The number of instances to launch."
  default     = "1"
}

variable "keypair" {
  type        = "string"
  description = "The name of the SSH keypair to attach to the instances."
}

variable "security_groups" {
  type        = "list"
  description = "Security groups to attach to the instances."
  default     = []
}

variable "instance_schedule" {
  type        = "string"
  description = "The schedule on which to start and stop EC2 instances. Can be `na` or `1100;2300;utc;weekdays`, depending on whether this is a dev or prod environment."
}

variable "instance_backup" {
  type        = "string"
  description = "Backup instructions for EC2 instances"
}

variable "instance_patch_group" {
  type        = "string"
  description = "Patch group to apply to EC2 instances."
}

variable "ami" {
  type = "string"

  // Amazon Linux ECS optimized us-east-1 (see https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html)
  default = "ami-0b9a214f40c38d5eb"
}
