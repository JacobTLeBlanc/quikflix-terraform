variable "region" {
  type = string
  default = "us-east-2"
}

variable "availability_zones" {
  type = list(string)
  default = ["us-east-2a", "us-east-2b", "us-east-2c"]
}

variable "namespace" {
  type = string
}

variable "stage" {
  type = string
}

# Movie Catalog variables
variable "movie_catalog_name" {
  type = string
}