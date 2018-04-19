resource "aws_ecr_repository" "whoami-app" {
  name = "${var.app_repository_name}"
}
