
variable "cluster_name" {
    description = "ECS Cluster Name"
    default = "whoami"
}

variable "app_repository_name" {
    description = "ECR Repository Name"
    default = "whoami-api"
}

variable "aws_key_path" {
    description = "Public key path"
    default = "/Users/matheus/.ssh/id_rsa.pub"
}

variable "aws_region" {
    description = "AWS Region for the VPC"
    default = "us-east-1"
}