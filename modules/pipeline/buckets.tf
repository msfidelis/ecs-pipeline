resource "aws_s3_bucket" "source" {
  bucket        = "${var.cluster_name}-pipeline"
  acl           = "private"
  force_destroy = true
}
