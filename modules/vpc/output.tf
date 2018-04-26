output "vpc_id" {
  value = "${aws_vpc.cluster_vpc.id}"
}

output "public_subnet_1a" {
  value = "${aws_subnet.public_subnet_us_east_1a.*.id}"
}

output "public_subnet_1b" {
  value = "${aws_subnet.public_subnet_us_east_1b.*.id}"
}

output "app_sg_id" {
  value = "${aws_security_group.app_sg.id}"
}

output "alb_sg_id" {
  value = "${aws_security_group.alb_sg.id}"
}

output "ecs_sg_id" {
  value = "${aws_security_group.ecs_sg.id}"
}
