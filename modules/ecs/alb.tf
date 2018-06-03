# Target Group for Web App
resource "aws_alb_target_group" "api_target_group" {
  name        = "${var.cluster_name}-alb-target-group"
  port        = "${var.container_port}"
  protocol    = "HTTP"
  vpc_id      = "${var.vpc_id}"
  target_type = "ip"

  lifecycle {
    create_before_destroy = true
  }

  depends_on = ["aws_alb.app_alb"]
}

resource "aws_alb" "app_alb" {
  name            = "${var.cluster_name}-alb"
  subnets         = ["${var.availability_zones}"]
  security_groups = ["${var.app_sg_id}", "${var.alb_sg_id}"]

  tags {
    Name        = "${var.cluster_name}-alb"
    Environment = "${var.cluster_name}"
  }
}

resource "aws_alb_listener" "web_app" {
  load_balancer_arn = "${aws_alb.app_alb.arn}"
  port              = "${var.alb_port}"
  protocol          = "HTTP"
  depends_on        = ["aws_alb_target_group.api_target_group"]

  default_action {
    target_group_arn = "${aws_alb_target_group.api_target_group.arn}"
    type             = "forward"
  }
}
