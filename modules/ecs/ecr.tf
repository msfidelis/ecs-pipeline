resource "aws_ecr_repository" "whoami-app" {
  name = "${var.repository_name}"
}