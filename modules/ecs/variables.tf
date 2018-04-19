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

variable "app_repository_name" {
  description = "Name of ECR Repository"
}
