module "elastic_beanstalk_application" {
  source      = "cloudposse/elastic-beanstalk-application/aws"
  version     = "0.40.0"
  namespace   = var.namespace
  stage       = var.stage
  name        = var.name
  description = "Movie Catalog Beanstalk App"
}