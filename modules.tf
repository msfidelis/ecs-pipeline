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
  app_repository_name = "${var.app_repository_name}"

  availability_zones = [
    "${module.vpc.public_subnet_1a}",
    "${module.vpc.public_subnet_1b}",
  ]
}
