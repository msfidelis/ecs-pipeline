variable "cluster_name" {
  description = "The cluster_name"
}

variable "vpc_id" {
  description = "The VPC id"
}

variable "availability_zones" {
  type        = "list"
  description = "The azs to use"
}

variable "public_subnet_1a" {
  description = "Public Subnet on us-east-1a"
}

variable "public_subnet_1b" {
  description = "Public Subnet on us-east-1b"
}

variable "app_sg_id" {
  description = "App Security Group"
}

variable "alb_sg_id" {
  description = "Application Load Balancer Security Group"
}

variable "ecs_sg_id" {
  description = "ECS Security Group"
}

variable "security_groups_ids" {
  type        = "list"
  description = "Security group lists"
}

variable "app_repository_name" {
  description = "Name of ECR Repository"
}

variable "alb_listener_port" {
  description = "ALB listener port"
}

variable "alb_target_port" {
  description = "ALB target port"
}

variable "desired_tasks" {
  description = "Number of containers desired to run the application task"
}

variable "desired_task_cpu" {
  description = "Task CPU Limit"
}

variable "desired_task_memory" {
  description = "Task Memory Limit"
}
