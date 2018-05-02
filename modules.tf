module "vpc" {
  source       = "./modules/vpc"
  cluster_name = "${var.cluster_name}"
}

module "ecs" {
  source              = "./modules/ecs"
  vpc_id              = "${module.vpc.vpc_id}"
  cluster_name        = "${var.cluster_name}"
  public_subnet_1a    = "${module.vpc.public_subnet_1a}"
  public_subnet_1b    = "${module.vpc.public_subnet_1b}"
  app_sg_id           = "${module.vpc.app_sg_id}"
  alb_sg_id           = "${module.vpc.alb_sg_id}"
  ecs_sg_id           = "${module.vpc.ecs_sg_id}"
  app_repository_name = "${var.app_repository_name}"

  security_groups_ids = [
    "${module.vpc.app_sg_id}",
    "${module.vpc.alb_sg_id}",
    "${module.vpc.ecs_sg_id}",
  ]

  availability_zones = [
    "${module.vpc.public_subnet_1a}",
    "${module.vpc.public_subnet_1b}",
  ]
}

module "pipeline" {
  source              = "./modules/pipeline"
  cluster_name        = "${var.cluster_name}"
  app_repository_name = "${var.app_repository_name}"
  repository_url      = "${module.ecs.repository_url}"
  app_service_name    = "${module.ecs.service_name}"
  vpc_id              = "${module.vpc.vpc_id}"
  region              = "${var.aws_region}"

  subnet_ids = [
    "${module.vpc.public_subnet_1a}",
    "${module.vpc.public_subnet_1b}",
  ]
}
