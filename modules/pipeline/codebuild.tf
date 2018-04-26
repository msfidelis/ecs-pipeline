data "template_file" "buildspec" {
  template = "${file("${path.module}/templates/buildspec.yml")}"

  vars {
    repository_url = "${var.repository_url}"
    region         = "${var.region}"
    cluster_name   = "${var.cluster_name}"

    # subnet_id          = "${var.run_task_subnet_id}"
    security_group_ids = "${join(",",var.subnet_ids)}"
  }
}
