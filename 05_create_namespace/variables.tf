variable "ns_name" {
  type = string
  description = "Name of the namespace to be created"
}

variable "project_name" {
  type = string
  description = "Name of the project to which the namespace will be assigned"
}

variable "cluster_name" {
  type = string
  description = "Name of the cluster to which the project belongs"
}