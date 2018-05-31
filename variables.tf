################################
###### QUICK EDIT'S HERE  ######
################################

# Customize your ECS Cluster Options
variable "cluster_name" {
  description = "ECS Cluster Name"
  default     = "web-app"
}

variable "container_name" {
  description = "Container app name"
  default     = "micro-api"
}

variable "desired_tasks" {
  description = "Number of containers desired to run app task"
  default     = 3
}

variable "desired_task_cpu" {
  description = "Desired CPU to run your tasks"
  default     = "256"
}

variable "desired_task_memory" {
  description = "Desired memory to run your tasks"
  default     = "512"
}

# Customize your ECR Registry Name
variable "app_repository_name" {
  description = "ECR Repository Name"
  default     = "web-app"
}

# Github Repository Owner
variable "git_repository_owner" {
  description = "Github Repository Owner"
  default     = "msfidelis"
}

# Github Repository Project Name
variable "git_repository_name" {
  description = "Project name on Github"
  default     = "micro-api"
}

# Default Branch
variable "git_repository_branch" {
  description = "Github Project Branch"
  default     = "master"
}

# Listener Application Load Balancer Port
variable "alb_listener_port" {
  description = "Origin Application Load Balancer Port"
  default     = "80"
}

# Target Group Load Balancer Port
variable "alb_target_port" {
  description = "Destination Application Load Balancer Port"
  default     = "80"
}

# Optional - For Classic ECS Only
variable "aws_key_path" {
  description = "Public key path"
  default     = "/Users/matheus/.ssh/id_rsa.pub"
}

# Customize your AWS Region
variable "aws_region" {
  description = "AWS Region for the VPC"
  default     = "us-east-1"
}
