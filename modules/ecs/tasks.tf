data "template_file" "api_task" {
  template = "${file("${path.module}/task-definitions/api-task.json")}"

  vars {
    image     = "${aws_ecr_repository.whoami-app.repository_url}"
    log_group = "${aws_cloudwatch_log_group.web-app.name}"
  }
}

resource "aws_ecs_task_definition" "web-api" {
  family                   = "${var.cluster_name}_web"
  container_definitions    = "${data.template_file.api_task.rendered}"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "256"
  memory                   = "512"

  execution_role_arn = "${aws_iam_role.ecs_execution_role.arn}"
  task_role_arn      = "${aws_iam_role.ecs_execution_role.arn}"
}
