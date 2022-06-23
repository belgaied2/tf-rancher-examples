variable "app_name" {
  type = string
  description = "Name of the secret to be created"
}

variable "project_name" {
  type = string
  description = "Name of the project to which the namespace will be assigned"
}

variable "cluster_name" {
  type = string
  description = "Name of the cluster to which the project belongs"
}

variable "catalog_name" {
  type = string
  description = "Name of the catalog to install"
}

variable "template_name" {
  type = string
  description = "Name of the template (App Chart) that the App should install"
}

variable "template_version" {
  type = string
  description = "Version of the Helm chart to be installed as a Legacy App"
}

variable "target_namespace" {
  type = string
  description = "Name of the target namespace where the app will be installed"
}