module "dynamodb_movie_catalog" {
  source  = "cloudposse/dynamodb/aws"
  version = "0.29.0"

  namespace                    = var.namespace
  stage                        = var.stage
  name                         = "movie_info"
  hash_key                     = "Id"
  range_key                    = ""
  autoscale_write_target       = 50
  autoscale_read_target        = 50
  autoscale_min_read_capacity  = 5
  autoscale_max_read_capacity  = 20
  autoscale_min_write_capacity = 5
  autoscale_max_write_capacity = 20
  enable_autoscaler            = true
}