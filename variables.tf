################################
###### QUICK EDIT'S HERE  ######
################################

# Customize your ECS Cluster NAme
variable "cluster_name" {
  description = "ECS Cluster Name"
  default     = "simple-api"
}

# Customize your ECR Registry Name
variable "app_repository_name" {
  description = "ECR Repository Name"
  default     = "simple-api"
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
