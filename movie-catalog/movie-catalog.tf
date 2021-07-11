module "elastic_beanstalk_application" {
  source      = "cloudposse/elastic-beanstalk-application/aws"
  version     = "0.11.0"
  namespace   = var.namespace
  stage       = var.stage
  name        = var.name
  description = "Movie Catalog Beanstalk App"
}

module "elastic_beanstalk_environment" {
  source                             = "cloudposse/elastic-beanstalk-environment/aws"
  version                            = "0.40.0"
  namespace                          = var.namespace
  stage                              = var.stage
  name                               = var.name
  region                             = var.region
  description                        = "Movie Catalog Beanstalk Environment"
  availability_zone_selector         = "Any 2"
  elastic_beanstalk_application_name = module.elastic_beanstalk_application.elastic_beanstalk_application_name

  instance_type           = "t3.small"
  autoscale_min           = 1
  autoscale_max           = 2
  updating_min_in_service = 0
  updating_max_batch      = 1

  loadbalancer_type    = "application"
  vpc_id               = var.vpc_id
  loadbalancer_subnets = var.public_subnet_ids
  application_subnets  = var.private_subnet_ids

  prefer_legacy_service_policy = false

  solution_stack_name = "64bit Amazon Linux 2018.03 v2.12.17 running Docker 18.06.1-ce"
}