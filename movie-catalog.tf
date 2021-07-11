module "movie-catalog" {
  source = "movie-catalog/movie-catalog.tf"

  namespace = var.namespace
  name      = var.movie_catalog_name
  stage     = var.stage
  region    = var.region

  vpc_id             = module.vpc.vpc_id
  public_subnet_ids  = module.subnets.public_subnet_ids
  private_subnet_ids = module.subnets.private_subnet_ids

  vpc_security_group_id = module.vpc.vpc_default_security_group_id
}