resource "aws_ecr_repository" "simple-api" {
  name = "${var.app_repository_name}"
}
