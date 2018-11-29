resource "aws_s3_bucket" "source" {
  bucket        = "${var.cluster_name}-pipeline-ex"
  acl           = "private"
  force_destroy = true
}
