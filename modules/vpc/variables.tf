variable "cluster_name" {
  description = "The cluster_name"
}

variable "alb_port" {
  description = "Origin Application Load Balancer Port"
}

# Target Group Load Balancer Port
variable "container_port" {
  description = "Destination Application Load Balancer Port"
}
