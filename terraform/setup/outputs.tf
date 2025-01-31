####################
# Output values for budget-user AWS login credentials.
####################

output "budget-user-access-key-id" {
  description = "AWS key ID for the budget-user"
  value       = aws_iam_access_key.budget-user.id
}

output "budget-user-access-key-secret" {
  description = "Access secret for the budget-user"
  value       = aws_iam_access_key.budget-user.secret
  sensitive   = true
}

#####################
# Output URLs for the ECR repository.
#####################

output "ecr-repo-budget-app" {
  description = "URL of the ECR repository for the budget app container image"
  value       = aws_ecr_repository.budget-app-repo.repository_url
}

output "task-execution-role" {
  description = "A task execution role that allows ECS to retrieve images and write to the logs"
  value       = aws_iam_role.task-execution-role.arn
}

output "app-task-role" {
  description = "A task role that grants permissions to application containers in ECS"
  value       = aws_iam_role.app-task-role.arn
}

###########################
# Output values needed by the Deploy project
###########################

output "ecs-task-logs-bap" {
  description = "Log group for CloudWatch"
  value       = aws_cloudwatch_log_group.ecs-task-logs-bap
}

output "vpc-main" {
  description = "Name of the main VPC"
  value = aws_vpc.vpc-main
}

output "public-a" {
  description = "Name of the public-a subnet"
  value = aws_subnet.public-a
}

output "public-b" {
  description = "Name of the public-a subnet"
  value = aws_subnet.public-b
}

output "private-a" {
  description = "Name of the public-a subnet"
  value = aws_subnet.private-a
}

output "private-b" {
  description = "Name of the public-a subnet"
  value = aws_subnet.private-b
}

output "ecs-service" {
  description = "Name of the ECS service"
  value = aws_security_group.ecs-service
}

output "ecs-main" {
  description = "Name of the ECS cluster"
  value = aws_ecs_cluster.ecs-main
}

output "budget-app-target" {
  description = "Target group for the application"
  value = aws_lb_target_group.budget-app-target.arn
}

output "budget-app-endpoint" {
  value = aws_route53_record.budget-app.fqdn
}