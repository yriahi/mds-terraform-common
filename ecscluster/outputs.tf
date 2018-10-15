// The ID of the ASG.
output "autoscaling_group_id" {
  value = "${module.asg.autoscaling_group_id}"
}

// ECS cluster name.
output "ecs_cluster" {
  value = "${aws_ecs_cluster.cluster.name}"
}
