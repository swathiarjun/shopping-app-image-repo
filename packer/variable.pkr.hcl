
variable "project_name" {
  type        = string
  description = "name of project"
}

variable "project_env" {
  type        = string
  description = "name of project"
}
variable "ami_id" {
  type        = string
  description = " source ami id "
 }
variable "instance_type" {
  type        = string
  description = "type of instance"
}
locals {
  image-timestamp = "${formatdate("DD-MM- YYYY-hh-mm", timestamp())}"
  image-name      = "${var.project_name}-${var.project_env}-${local.image-timestamp}"
}


