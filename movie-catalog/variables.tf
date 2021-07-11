variable "namespace" {
  type = string
}

variable "stage" {
  type = string
}

variable "name" {
  type = string
}

variable "region" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "public_subnet_ids" {
  type = list(string)
}

variable "private_subnet_ids" {
  type = list(string)
}

variable "vpc_security_group_id" {
  type = string
}